# == Schema Information
#
# Table name: people
#
#  id           :integer          not null, primary key
#  first_name   :string           not null
#  last_name    :string
#  gender       :integer          default(0)
#  birth_date   :date
#  location     :string
#  phone_number :string
#  email        :string
#  headline     :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  picture      :string
#

class PersonSerializer < ActiveModel::Serializer
  attributes :id, 
             :first_name,
             :last_name,
             :gender,
             :birth_date,
             :location,
             :phone_number,
             :email,
             :headline,
             :picture

end
