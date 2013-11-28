namespace :db do
  task :create do
    config = Rails.configuration.database_configuration[Rails.env].merge!({'schema_search_path' => 'public'})
    ActiveRecord::Base.establish_connection(config)
    ActiveRecord::Base.connection.execute("CREATE SCHEMA schema_name")
  end
end
