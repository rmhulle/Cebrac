class Fixcolumnname2 < ActiveRecord::Migration
  def change
  	rename_column :identities, :class_name, :lecture

  end
end
