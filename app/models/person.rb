# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  location   :string
#  headline   :string
#  summary    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Person < ActiveRecord::Base
  acts_as_taggable_on :skills, :interests
  pg_search_scope :quick_search, 
                  against: [:headline, :location, :summary],
                  associated_against: {
                    skills: [:name],
                    interests: [:name]
                  }
  validates :first_name, presence: true
end
