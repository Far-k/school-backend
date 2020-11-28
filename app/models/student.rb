class Student < ApplicationRecord
    validates :username, presence: true
    validates :username, uniqueness: true
    has_secure_password
    has_many :subjects
    has_many :courses, through: :subjects
    has_many :instructors, through: :subjects
end
