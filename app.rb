require 'bundler'
Bundler.require 
require './lib/artist'
require './lib/genre'
require './lib/song'
require './lib/parser'
require './lib/playlister'


module Box 
	class JukeBox < Sinatra::Application 
		before do 
			@parser = Parser.new("./public/data")
		end 

		get '/' do 
			erb :index 
		end

		get '/artists' do
			erb :artist
		end 

		# get '/genres' do

		# end 

	end 
end 