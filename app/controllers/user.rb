enable :sessions
set :protection, except: :session_hijacking

post '/signup' do
  @user = User.create(params[:user])
  @message = "Sign in here"
  erb :index
end

post '/signin' do
  @user = User.authenticate(params[:user]["username"], params[:user]["password"])
  if @user
    session[:user_id] = @user.id
    redirect '/'
  else
    @message = "User not authenticated"
    redirect '/'
  end
end

get '/logout' do
  session[:user_id] = nil
  redirect  '/'
end

get '/user/:u_id' do
  @surveys = User.find(params[:u_id]).surveys
  erb :profile
end
