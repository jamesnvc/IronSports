# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin = User.create(email: 'admin@uoftironsports.ca',
                    password: ENV['ADMIN_PASS'], password_confirmation: ENV['ADMIN_PASS'],
                    first_name: 'Amanda', last_name: 'Santos',
                    gender: 'F')
admin.is_admin = true
admin.save!
