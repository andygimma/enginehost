# This migration comes from donatable (originally 20171001023635)
class AddLogoImageToOrganizations < ActiveRecord::Migration[5.1]
  def change
    add_attachment :donatable_organizations, :logo_image
  end
end
