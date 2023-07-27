class AddRatingToRestaurants < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurants, :rating, :integer, default: 0
  end
end

# def change
#   add_column :table_name, :column_name, :type

#   remove_column :table_name, :column_name

#   rename_column :table_name, :old_column, :new_column

#   change_column :table_name, :column_name, :new_type

#   add_reference :table_name, :reference_model, index: true

#   remove_reference :table_name, :reference_model, index: true

#   drop_table :table_name
# end