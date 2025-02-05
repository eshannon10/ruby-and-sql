# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.

new_salesperson = Salesperson.new
new_salesperson["first_name"] = "Jack"
new_salesperson["lastn_name"] = "Sparks"
new_salesperson["email"] = "jack@gmail.com"

new_salesperson.save


new_salesperson2 = Salesperson.new
new_salesperson2["first_name"] = "Jeff"
new_salesperson2["lastn_name"] = "Sparks"
new_salesperson2["email"] = "jeff@gmail.com"

new_salesperson2.save

puts new_salesperson.inspect
puts new_salesperson2.inspect



# 3. write code to display how many salespeople rows are in the database

sales_people_num = Salesperson.count
puts "Salespeople: #{sales_people_num}"


# 4. modify/update column data for a row in the salespeople table.
#find the row and call it jack, where the first name in that row is Jack. can also find by multiple key value pairs
jack = Salesperson.find_by({"first_name" => "Jack"})
jack["email"] = "jaaack@gmail.com"
jack.save

# CHALLENGE:
# 5. write code to display each salesperson's full name

# loop through the table and print first and last name
# use the shorthand loop for [row] in [table]

for salesperson in salespeople
    first_name = salesperson["first_name"]
    last_name = salesperson["lastn_name"]
    name = "#{first_name #{last_name}"
    puts name
end


# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
