# frozen_string_literal: true
# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end
# frozen_string_literal: true
# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

%w(alice bob charlie dana eliot franky gloria henry iulia).each do |name|
  email = "#{name}@#{name}.com"
  next if User.exists? email: email
  User.create!(email: email,
               password: 'abc123',
               password_confirmation: nil)

  Student.create!(first_name: name.to_s,
                  last_name: 'Wisner',
                  born_on: '2010-01-02',
                  school: 'Bronxville',
                  teacher: 'Gillin',
                  grade: '4')

  # Observation.create!(obs_num: 1,
  #                     obs_on: '2010-01-02',
  #                     obs_setting: 'Classroom',
  #                     obs_task: 'reading',
  #                     obs_time: 10,
  #                     aet: 1,
  #                     pet: 1,
  #                     oft_m: 1,
  #                     oft_v: 1,
  #                     oft_p: 1,
  #                     obs_comment: name.to_s)
end
