class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price_in_cents

  validates :description, :name, :presence => true
  validates :price_in_cents, :numericity => {:only_integer => true}
end
