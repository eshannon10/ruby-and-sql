# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database

puts "Contacts: #{Contact.all.count}"

# 1. insert new rows in the contacts table with relationship to a company

#this gets the Apple row in company database. we use this to find the company_id foreign key below
apple = Company.find_by({"name" => "Apple"})
puts apple.inspect

contact = Contact.new
contact["first_name"] = "Tim"
contact["company_id"] = apple["id"] #this grabs the foreign key value from the apple row in company
contact.save
puts contact.inspect


# 2. How many contacts work at Apple?

apple_contacts = Contact.where({"Company_id" => apple["id"] })
puts "Apple num employees: #{apple_contacts.count}"

# 3. What is the full name of each contact who works at Apple?
