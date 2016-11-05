class AddTypeToUsers < ActiveRecord::Migration
  def change
    # Need a default value for external users.
    # Expect an external user is a general user.
    add_column :users, :type, :string, default: 'GeneralUser'
    add_index :users, :type
  end
end
