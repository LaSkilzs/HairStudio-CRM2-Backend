class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :full_name,:birthday, :email, :home, :mobile, :street_1, :city, :state, :zip
  
end
