class PersonSerializer < ActiveModel::Serializer
  attributes :id, 
             :first_name,
             :last_name,
             :gender,
             :birth_date,
             :location,
             :phone_number,
             :email,
             :headline

end
