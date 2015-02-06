require './config/environment'
require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index  
  end

  get '/items' do
    @items = Item.all
    erb :items
  end

  post '/purchases' do
    @total = 0
    params.each do |item, quantity|
      item = Item.find { name: item)
      item.count -= quantity.to_i
      item.save
      if quantity.to_i > 0
        @total += item.price 
        Purchase.create(user_id: @user.id, item_id: item.id)
      end
    end
    erb :confirmation
  end

  get '/sign-in' do
    erb :signin
  end

  post '/sign-in' do
    @user = User.find_by(:email => params[:email], :name => params[:name])
    if @user
      session[:user_id] = @user.id
    end
    redirect '/items'
  end

  get '/sign-out' do
    session[:user_id] = nil
    session[:error] = nil
    redirect '/items'
  end

end