class Parent < ActiveRecord::Base
  attr_accessible :name, :age
  has_many :children
  paginates_per 10
end
