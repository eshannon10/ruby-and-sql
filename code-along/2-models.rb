# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

puts "There are #{Company.all.count} companies"

# 2. insert new rows in companies table

new_company = Company.new
puts new_company
new_company["name"] = "Apple"
new_company["city"] = "Cupertino"
new_company["state"] = "CA"
new_company["url"] = "https://www.apple.com"

puts new_company.inspect

new_company.save


# 3. query companies table to find all row with California company

cali_companies = Company.where({ "state" => "CA"})
#puts cali_companies.inspect
puts "Cali companies: #{cali_companies.count}"

# 4. query companies table to find single row for Apple

#apple = Company.where({"name" = "Apple"}) #this returns an array (the Apple row)! not a singular value
#apple = Company.where({"name" = "Apple"})[0] #this works instead to get the first cell
apple = Company.find_by({"name" => "Apple"}) #alt method that is more readable
puts apple.inspect


# 5. read a row's column value
apple_url = apple["url"]
puts apple_url

# 6. update a row's column value

apple["url"] = "www.aaaaple.com"
apple.save
puts apple.inspect


# 7. delete a row

apple.destroy
puts "Cali companies: #{cali_companies.count}"
 
