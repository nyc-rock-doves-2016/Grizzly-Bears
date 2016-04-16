post '/guesses' do
  if logged_in?
  @guess = Guess.new(user_id: session[:user_id], content: params[:content], card_id: params[:card_id])

  else

  end
end


#check if guess can be saved without all parameters present by checking the rout
