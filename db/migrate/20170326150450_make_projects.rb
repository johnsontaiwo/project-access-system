class MakeProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string  :title
      t.string  :description
      t.string  :general_contractor
      t.string  :project_type
      end
  end
end
