get '/survey' do
  erb :survey
end

post '/survey' do
  @user = User.find(session[:user_id])
  @survey = Survey.create(name: params[:name], user: @user)
  session[:survey_id] = @survey.id
  redirect "/survey/#{@survey.id}"
end

get '/survey/:s_id' do
  @survey = Survey.find(params[:s_id])
  erb :surveyquestion
end

post '/survey/:s_id' do
  erb :surveyquestion
end