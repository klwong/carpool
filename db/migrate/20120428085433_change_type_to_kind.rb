class ChangeTypeToKind < ActiveRecord::Migration
  def change
    rename_column :events, :type, :kind
    rename_column :invitations, :type, :kind
    rename_column :routes, :type, :kind
  end
end
