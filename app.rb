require "sinatra"
require "sinatra/reloader" if development?
require_relative 'models/blog_post'


get "/" do
  @posts = BlogPost.all
  erb :index
end
get '/post/:id' do
  post = BlogPost.find(params[:id].to_i)
  erb :post, locals: {post: post}
end

get '/blog/new' do
  erb :create
end

post '/blog/new' do
  BlogPost.create(author: params[:author], title: params[:title], subtitle: params[:subtitle], image: params[:image], body: params[:body])
  redirect url('/')
end
