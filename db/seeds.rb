School.destroy_all 
Student.destroy_all 

school1 = School.create!(name: "Flatiron School", address:"11 Broadway")
school2 = School.create!(name: "NYU", address:"New York, NY 10003")
school3 = School.create!(name: "John Jay", address:"524 W 59th St, New York, NY 10019")
school4 = School.create!(name: "City College", address:"160 Convent Ave, New York, NY 10031")
school5 = School.create!(name: "Columbia University", address:"116th St & Broadway, New York, NY 10027")

Student.create!(name: "Bob", age: 22, school_id: school1.id)
Student.create!(name: "Tina", age: 20, school_id: school1.id)
Student.create!(name: "Sam", age: 19, school_id: school2.id)
Student.create!(name: "Julie", age: 25, school_id: school3.id)
Student.create!(name: "Alex", age: 20, school_id: school4.id)

