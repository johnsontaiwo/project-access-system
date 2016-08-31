class Changecolumn < ActiveRecord::Migration
  def change
    change_column :projects, :project_site, :text
  end
end
