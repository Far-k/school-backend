class Course < ApplicationRecord
    belongs_to :subject
    has_many :contents
    # has_attached_file :content, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    # validates_attachment :content, presence: true
    # do_not_validate_attachment_file_type :content
end
