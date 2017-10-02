# This migration comes from donatable (originally 20171001223515)
class AddLanguageToOrganization < ActiveRecord::Migration[5.1]
  def change
    add_column :donatable_organizations, :language, :string
  end
end
