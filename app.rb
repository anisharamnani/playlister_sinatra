require 'bundler'
Bundler.require 
require './lib/artist'
require './lib/genre'
require './lib/song'
require './lib/parser'
#we don't need this because it's all display logic in our views
#require './lib/playlister'


module Box 
	class JukeBox < Sinatra::Application 
		before do 
			@parser = Parser.new("./public/data")
		end 

		get '/' do 
			erb :index 
		end

		get '/artists' do
			erb :artists
		end 

		get '/genres' do
			erb :genres
		end

		get '/songs' do 
			erb :songs 
		end 

		get '/artists/:type' do 
			@artist_name = "#{params[:type]}"
			erb :artist
		end 

		get '/genres/:type' do
			@genre_name = "#{params[:type]}"
			erb :genre 
		end 

		get '/songs/:type' do
			@song_name = "#{params[:type]}"
			erb :song
		end 

	end 
end 