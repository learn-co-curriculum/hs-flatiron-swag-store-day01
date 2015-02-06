require './config/environment'
require './app/models/item'
require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    hoodie = Item.new("hoodie", "https://s3.amazonaws.com/after-school-assets/flatiron-swag-store-lab/flatiron_hoodie.jpg", 35.00, 20)
    tee = Item.new("tee","https://s3.amazonaws.com/after-school-assets/flatiron-swag-store-lab/flatiron_tee_m.jpg",15.00,30)
    @items = Item.all
    erb :index  
  end

  post '/purchases' do
    @purchases = params
    @total = 0
    @purchases.each do |name, quantity|
      purchase = Item.all.find { |item| item.name == name }
      @total += purchase.price * quantity.to_i
    end
    # binding.pry
    erb :confirmation
  end

end