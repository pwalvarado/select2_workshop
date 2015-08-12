module NestedHelper

  def link_to_add_fields(name, f, association, options={})
    new_object = f.object.send(association).klass.new

    id = new_object.object_id

    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end

    link_to(name, '#', class: "add_fields #{options[:class]}",
      data: {id: id, fields: fields.gsub("\n", "")})
  end

  def link_to_remove_nested(name, f, options={})
    f.hidden_field(:_destroy) + link_to(name, '#',
      class: "remove_fields_nested #{options[:class]}")
  end

end
