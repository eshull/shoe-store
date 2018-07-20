require("bundler/setup")
Bundler.require(:default)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get("/") do
  erb(:index)
end

get("/shoes") do
  @shoes = Shoe.all()
  erb(:shoes)
end

get("/stores") do
  @stores = Store.all()
  erb(:stores)
end
