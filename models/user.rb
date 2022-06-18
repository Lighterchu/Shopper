load 'ar.rb'
class User < ActiveRecord::Base
    has_many :orders
end
  