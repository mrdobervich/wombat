require 'csv'    

csv_text = File.read('app/newusers.txt')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  d = row.to_hash
  email = d["Email"]
  name = d["Name"]
  User.create!({:email => email, :name => name, :password => "11111111", :password_confirmation => "11111111", :course_id => "1"})
end

