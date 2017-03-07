require 'instagram'
class AdventuresController < ApplicationController

def index

   client = Instagram.client(:access_token => ENV['config.access_token'] )
   @user = client.user
   @recent_media_items = client.user_recent_media
end

end
