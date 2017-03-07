require "instagram"
   Instagram.configure do |config|
   config.client_id = ENV['config.client_id']
   config.access_token = ENV['config.access_token']
end
