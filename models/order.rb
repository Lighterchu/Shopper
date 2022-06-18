load 'ar.rb'
class Order < ActiveRecord::Base
    belongs_to :users
    belongs_to :products
end
  