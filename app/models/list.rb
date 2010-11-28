class List < ActiveRecord::Base
  attr_accessible :name

  #has_and_belongs_to_many :users
  belongs_to :user
  has_many   :items, :dependent => :destroy
  accepts_nested_attributes_for :items, 
                                :reject_if => lambda { |a| a[:name].blank? },
                                :allow_destroy => true
end
