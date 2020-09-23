class ApplicationController < ActionController::Base

def default_url_options
  { host: ENV["DOMAIN"] || "www.bisimpact.com" }
end

end
