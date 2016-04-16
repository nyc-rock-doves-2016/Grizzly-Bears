enable :sessions

get '/login' do
  erb :'session/new'
end

post '/login' do
  user = User.find_by(username: params[:user][:username])
  if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.id
    redirect "/users/#{user.id}"
  else
    @errors = ["Wrong username or password"]
    erb :'/session/new'
  end
end

delete '/logout' do
  session.clear
  redirect '/'
end
