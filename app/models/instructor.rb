class Instructor < ApplicationRecord
    validates :username, presence: true
    validates :username, uniqueness: true
    has_secure_password
    #has_many :students, through: :courses
    has_many :subjects
    has_many :courses, through: :subjects
    has_many :contents
    #has_many :contents, through: :courses
end
