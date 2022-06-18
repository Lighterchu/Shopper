load 'ar.rb'
class Product < ActiveRecord::Base
    has_one :orders
end