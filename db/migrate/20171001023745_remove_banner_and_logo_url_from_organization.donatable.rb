# This migration comes from donatable (originally 20171001023530)
class RemoveBannerAndLogoUrlFromOrganization < ActiveRecord::Migration[5.1]
  def change
    remove_column :donatable_organizations, :banner_url, :string
    remove_column :donatable_organizations, :logo_url, :string
  end
end
