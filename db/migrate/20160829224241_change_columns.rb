class ChangeColumns < ActiveRecord::Migration
  def change
    change_column :projects, :contract_number, :text
    change_column :projects, :contract_amount, :text
    change_column :projects, :start_date, :text
    change_column :projects, :substantial_completion_date, :text
    change_column :projects, :final_completion_date, :text
  end
end
