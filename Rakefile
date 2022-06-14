# # require_relative '/config/environment'
# # require_relative './project/config/environment'
require 'sinatra/activerecord/rake'

namespace :db do
    task :migrate => :environment do
        ActiveRecord::MigrationContext.new('db/migrate', ActiveRecord::SchemaMigration).migrate(ENV["VERSION"] ? ENV["VERSION"].to_i : nil )
    end
end
  
task :environment do
    load 'ar.rb'
end


# namespace :db do
#     task :load_config do
#       require "./app"
#     end
#   end



ActiveRecord::Base.establish_connection(
  :adapter  => "postgresql",
  :host     => "localhost",
  :username => "Benny734",
  :password => "Brother734",
  :database => "Shop"
)
ActiveRecord::Base.logger = Logger.new(STDOUT)
