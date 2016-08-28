class CreateContractorProjects < ActiveRecord::Migration
  def change
    create_table :contractor_projects do |t|
      t.string :name 
      t.integer  :project_id
      t.integer :contractor_id
      t.timestamps null: false
    end
  end
end
