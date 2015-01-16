require "instagram"

Instagram.configure do |config|

  config.client_id = "d85f757e0f0943989f4112e86db4f3f4"
  config.access_token = ENV["INSTAGRAM_ACCESS_TOKEN"]

end
