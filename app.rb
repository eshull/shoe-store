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

post("/shoes") do
  name = params.fetch("shoe_name")
  Shoe.create({:brand => name})
  redirect("/shoes")
end

post("/stores") do
  name = params.fetch("store_name")
  Store.create({:name => name})
  redirect("/stores")
end

get("/shoes/:id") do
  @shoe = Shoe.find(params.fetch("id").to_i())
  if @shoe.store_id
    @store = Store.find(@shoe.store_id)
  else
    @store = nil
  end
  @stores = Store.all
  erb(:shoe)
end

get("/stores/:id") do
  @store = Store.find(params.fetch("id").to_i())
  @shoes = Shoe.all
  erb(:store)
end

patch("/shoes/:id") do
  store_id = params.fetch("store_id").to_i()
  @shoe = Shoe.find(params.fetch("id").to_i())
  @shoe.update({:store_id => store_id})
  redirect back
end

patch("/stores/:id") do
  shoe = Shoe.find(params.fetch("shoe_id").to_i())
  @store = Store.find(params.fetch("id").to_i())
  @store.shoes.push(shoe)
  redirect back
end
