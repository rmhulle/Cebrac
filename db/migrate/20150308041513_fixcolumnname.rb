class Fixcolumnname < ActiveRecord::Migration
  def change
  
    rename_column :identities, :class, :class_name



  end
end
