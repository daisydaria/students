class CreateJoinTableDisciplineTeacher < ActiveRecord::Migration
  def change
    create_join_table :disciplines, :teachers do |t|
      # t.index [:discipline_id, :teacher_id]
      # t.index [:teacher_id, :discipline_id]
    end
      reversible do |l|
		l.up do
		execute("ALTER TABLE group_syllabus ADD FOREIGN KEY (discipline_id) REFERENCES disciplines(id)")
		execute("ALTER TABLE group_syllabus ADD FOREIGN KEY (teacher_id) REFERENCES teachers(id)")
		execute("ALTER TABLE group_syllabus ADD PRIMARY KEY (discipline_id, teacher_id)")
		end
	end
  end
end
