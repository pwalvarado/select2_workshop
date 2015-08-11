class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :schedule
      t.references :course, index: true, foreign_key: true
      t.integer :quota, default: 30
      t.integer :enrolled, default: 0
      t.integer :minimun, default: 8

      t.timestamps null: false
    end

    Group.create schedule: 'MJ 8-10', course_id: 1
    Group.create schedule: 'MJ 10-12', course_id: 1
    Group.create schedule: 'WV 16-18', course_id: 1
    Group.create schedule: 'MJ 18-20', course_id: 1
    Group.create schedule: 'S 8-12', course_id: 1
    Group.create schedule: 'LV 8-10', course_id: 1
    Group.create schedule: 'L 12-16', course_id: 1

    Group.create schedule: 'WV 8-10', course_id: 2
    Group.create schedule: 'WV 10-12', course_id: 2
    Group.create schedule: 'WV 16-18', course_id: 2
    Group.create schedule: 'WV 18-20', course_id: 2
    Group.create schedule: 'S 8-12', course_id: 2
    Group.create schedule: 'LV 8-10', course_id: 2
    Group.create schedule: 'L 12-16', course_id: 2

    Group.create schedule: 'MJ 18-20', course_id: 3
    Group.create schedule: 'WV 10-12', course_id: 3
    Group.create schedule: 'WV 16-18', course_id: 3
    Group.create schedule: 'WV 18-20', course_id: 3
    Group.create schedule: 'S 10-14', course_id: 3
    Group.create schedule: 'LV 18-20', course_id: 3
    Group.create schedule: 'L 12-16', course_id: 3

    Group.create schedule: 'MJ 6-8', course_id: 4
    Group.create schedule: 'MJ 8-10', course_id: 4
    Group.create schedule: 'MJ 10-12', course_id: 4
    Group.create schedule: 'MJ 16-18', course_id: 4
    Group.create schedule: 'MJ 18-20', course_id: 4
    Group.create schedule: 'L 12-16', course_id: 4
    Group.create schedule: 'WV 6-8', course_id: 4
    Group.create schedule: 'WV 8-10', course_id: 4
    Group.create schedule: 'WV 10-12', course_id: 4
    Group.create schedule: 'WV 16-18', course_id: 4
    Group.create schedule: 'WV 18-20', course_id: 4

    Group.create schedule: 'MJ 8-10', course_id: 5
    Group.create schedule: 'MJ 10-12', course_id: 5
    Group.create schedule: 'WV 16-18', course_id: 5
    Group.create schedule: 'MJ 18-20', course_id: 5
    Group.create schedule: 'S 8-12', course_id: 5
    Group.create schedule: 'LV 8-10', course_id: 5
    Group.create schedule: 'L 12-16', course_id: 5
  end
end
