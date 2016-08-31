class Addcolumntoprojects < ActiveRecord::Migration
  def change
    add_column :projects, :project_site, :string
  end
end
