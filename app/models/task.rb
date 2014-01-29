class Task < ActiveRecord::Base
  attr_accessible :active, :name, :points
  
  has_many :chores
  validates_presence_of :name, :points
  validates_numericality_of :points, :only_integer => true, :greater_than => 0

  scope :alphabetical, order('name')
  scope :active, where('active = ?', true)
end
