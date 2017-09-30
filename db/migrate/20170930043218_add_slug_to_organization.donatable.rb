# This migration comes from donatable (originally 20170930043137)
class AddSlugToOrganization < ActiveRecord::Migration[5.1]
  def change
    add_column :donatable_organizations, :slug, :string
  end
end
