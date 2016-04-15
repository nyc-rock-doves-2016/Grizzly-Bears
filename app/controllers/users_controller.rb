post '/users' do
  @user = User.new(params[:user])
  if @user.save
    redirect "users/#{@user.id}"
  else
    @errors = @user.errors.full_messages# still need to display error
    erb :'users/new'
  end
end

get '/users/new' do
  erb :'users/new'
end

get '/users/:id' do
  @user = User.find(params[:id])
  if logged_in?(@user)
  erb :'users/show'
  else
    "you are not authorized!"
  end
end



