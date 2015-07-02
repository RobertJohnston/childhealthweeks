class AddNationalSiteIdToSites < ActiveRecord::Migration
  def change
    add_column :sites, :national_site_id, :string
    # national_site_id is the id used in current SNIS tool
  end
end

