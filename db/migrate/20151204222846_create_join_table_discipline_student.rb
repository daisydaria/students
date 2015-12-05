class CreateJoinTableDisciplineStudent < ActiveRecord::Migration
  def change
    create_join_table :disciplines, :students do |t|
      # t.index [:discipline_id, :student_id]
      # t.index [:student_id, :discipline_id]
    end
        reversible do |l|
		l.up do
		execute("ALTER TABLE group_syllabus ADD FOREIGN KEY (discipline_id) REFERENCES disciplines(id)")
		execute("ALTER TABLE group_syllabus ADD FOREIGN KEY (student_id) REFERENCES students(id)")
		execute("ALTER TABLE group_syllabus ADD PRIMARY KEY (discipline_id, student_id)")
		end
	end 
  end
end
