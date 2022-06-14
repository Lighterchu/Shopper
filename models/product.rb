load 'ar.rb'
class Product < ActiveRecord::Base
    attr_accessor :name, :amount, :price
    belongs_to :user
end
  