class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :prayers
  has_many :supporters, through: :prayers, source: :user
  validates_presence_of :body

  accepts_nested_attributes_for :comments
end
