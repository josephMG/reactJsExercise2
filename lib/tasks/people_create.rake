namespace :db do
  task people_create: :environment do

    Person.destroy_all

    50.times do |i|
      Person.create do |person|
        first_name = FFaker::Name.first_name
        gender = Person.genders.values.sample
        picture_gender = gender == Person.genders[:male] ? 'men' : 'women'

        person.first_name = first_name
        person.last_name = FFaker::Name.last_name
        person.gender = gender
        person.birth_date = (20..40).to_a.sample.years.ago
        person.location = FFaker::Address.country
        person.email = FFaker::Internet.email(first_name)
        person.phone_number = FFaker::PhoneNumber.phone_number
        person.headline = FFaker::Lorem.sentence(3)
        person.picture = "http://api.randomuser.me/portraits/#{picture_gender}/#{i}.jpg"
      end
    end
  end
end
