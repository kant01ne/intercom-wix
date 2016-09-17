class AddWixIdentifiersToApp < ActiveRecord::Migration
  def change
    add_column :apps, :email, :string
    add_column :apps, :name, :string
    add_column :apps, :compId, :string
  end
end
