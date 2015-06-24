class AddNationalSiteIdToSites < ActiveRecord::Migration
  def change
    add_column :sites, :national_site_id, :string
  end
end

