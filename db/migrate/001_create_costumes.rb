# Create a class and inherit from ActiveRecord::Migration

# By convention, the class name should match the part of the
# file name after the number, so in this case:
# 002_create_costumes.rb becomes class CreateCostumes
class CreateCostumes < ActiveRecord::Migration[5.0]
    create_table :costumes do |c|
        c.string :name
        c.integer :price
        c.integer :size
        c.string :image_url
        c.timestamps
    end

end

# Define a change method in which to do the migration
# In this change method, create columns with the correct names and 
# value types according to the spec