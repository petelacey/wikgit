class WikgitApp < Sinatra::Base
  set :root, File.dirname(__FILE__)

  configure do
    yaml= YAML.load_file("#{settings.root}/config/environments/#{settings.environment}.yaml") rescue {}
    yaml.each_pair do |key, value|
      set key, value unless methods(false).any? { |m| m.to_s == key.to_s }
    end
  end

  get "/" do
    "Hi"
  end
end
