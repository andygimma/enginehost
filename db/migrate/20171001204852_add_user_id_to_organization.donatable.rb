# This migration comes from donatable (originally 20171001204710)
class AddUserIdToOrganization < ActiveRecord::Migration[5.1]
  def change
    add_column :donatable_organizations, :user_id, :integer
  end
end
