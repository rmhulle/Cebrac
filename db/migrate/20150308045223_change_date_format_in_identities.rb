class ChangeDateFormatInIdentities < ActiveRecord::Migration
  def change
  	change_column :identities, :expiration, :string
  	change_column :identities, :last_printed, :string
  end
end
