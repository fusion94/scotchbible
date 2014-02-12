class Scotch < ActiveRecord::Base
  attr_accessible :age, :alcohol, :bottler, :country, :description, :distillery, :name, :region, :style, :volume, :tags_attributes

  validates :name,  :presence => true
  validates :country, :presence => true
  has_many :comments, :dependent => :destroy
  has_many :tags
 
  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
