class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :general_contractor
      t.string :project_type
      t.integer :contract_number
      t.integer :solicitation_number
      t.integer :contract_amount
      t.integer :start_date
      t.integer :substantial_completion_date
      t.integer :final_completion_date
    end
  end
end
