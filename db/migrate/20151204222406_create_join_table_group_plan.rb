class CreateJoinTableGroupPlan < ActiveRecord::Migration
  def change
    create_join_table :groups, :plans do |t|
      # t.index [:group_id, :plan_id]
      # t.index [:plan_id, :group_id]
    end
    reversible do |l|
		l.up do
		execute("ALTER TABLE group_syllabus ADD FOREIGN KEY (group_id) REFERENCES groups(id)")
		execute("ALTER TABLE group_syllabus ADD FOREIGN KEY (plan_id) REFERENCES plans(id)")
		execute("ALTER TABLE group_syllabus ADD PRIMARY KEY (group_id, plan_id)")
		end
	end    
  end
end
