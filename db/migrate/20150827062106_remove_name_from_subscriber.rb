class RemoveNameFromSubscriber < ActiveRecord::Migration
  def change
    remove_column :subscribers, :name, :string
  end
end
