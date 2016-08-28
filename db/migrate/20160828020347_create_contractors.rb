class CreateContractors < ActiveRecord::Migration
  def change
    create_table :contractors do |t|
      t.string :name
      t.string :company_name
      t.string :company_address
      t.integer :ssn
      t.string :certificaton
    end
  end
end
