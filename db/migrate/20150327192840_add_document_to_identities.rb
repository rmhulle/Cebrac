class AddDocumentToIdentities < ActiveRecord::Migration
  def change
    add_column :identities, :document, :string
  end
end
