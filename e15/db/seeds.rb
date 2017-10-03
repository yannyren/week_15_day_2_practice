# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Job.delete_all()
Student.delete_all()
Cohort.delete_all()

c1 = Cohort.create({year: 14})
c2 = Cohort.create({year: 15})

student1 = Student.create({name: "Stacey", cohort: c1 })
student2 = Student.create({name: "Yan", cohort: c2})

Job.create({title: "GM", student: student1})
Job.create({title: "CTO", student: student2})