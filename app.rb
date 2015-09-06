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
  redirect to '/videos'
end

# index
get '/videos' do
  sql = 'SELECT * FROM videos'
  @vids = @db.exec(sql)
  erb :index
end

# show
get '/videos/:id' do
  # binding.pry
  sql = "SELECT * FROM videos WHERE id = #{params[:id]}"
  @vidurl = @db.exec(sql).first
  # WTF is that .first doing?  I know I need it but don't understand why.
  erb :player
end

get '/videos/new' do

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

















