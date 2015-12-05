class CreateJoinTableDepartmentTeacher < ActiveRecord::Migration
  def change
    create_join_table :departments, :teachers do |t|
      # t.index [:department_id, :teacher_id]
      # t.index [:teacher_id, :department_id]
    end
    reversible do |l|
		l.up do
		execute("ALTER TABLE group_syllabus ADD FOREIGN KEY (department_id) REFERENCES departments(id)")
		execute("ALTER TABLE group_syllabus ADD FOREIGN KEY (teacher_id) REFERENCES teachers(id)")
		execute("ALTER TABLE group_syllabus ADD PRIMARY KEY (department_id, teacher_id)")
		end
	end    
  end
end
