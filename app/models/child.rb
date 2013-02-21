class Child < ActiveRecord::Base
  attr_accessible :name, :age, :parent_id
  belongs_to :parent
end
