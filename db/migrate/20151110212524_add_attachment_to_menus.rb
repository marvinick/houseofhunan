class AddAttachmentToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :attachment, :string
  end
end
