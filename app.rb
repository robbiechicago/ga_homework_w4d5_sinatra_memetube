require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'pry'

before do 
  @db = PG.connect(dbname: 'sinatra_memetube', host: 'localhost')
end

after do 
  @db.close
end

# home
get '/' do

end

# index
get '/videos' do

end

# show
get '/videos/:id' do

end

# create
post '/videos' do

end

# edit
get '/videos/:id/edit' do

end

# update
post '/videos/:id' do

end

# delete
post '/videos/:id/delete' do

end

















