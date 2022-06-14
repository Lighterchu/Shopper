require 'active_record'
require 'sqlite3'

ActiveRecord::Base.establish_connection(
  :adapter  => "postgresql",
  :host     => "localhost",
  :username => "Benny734",
  :password => "Brother734",
  :database => "Shop"
)


# Load all of our ActiveRecord::Base objects.
# require_relative 'models/fruit.rb' # fruits table
# require_relative 'models/phone.rb' # phones table
# require_relative 'models/bread.rb'  # breads table
# require_relative 'models/laptop.rb' # laptops table
require_relative 'models/product.rb' # products table
require_relative 'models/user.rb' # laptops table




ActiveRecord::Base.logger = Logger.new(STDOUT)
