class Post < ActiveRecord::Base
  has_many :comments

  validates_presence_of :body

  accepts_nested_attributes_for :comments
end
