post '/guesses' do

  #come back to this. new vs save???
  @card = Card.find(params[:card_id])
  @guess = Guess.create(user_id: session[:user_id], content: params[:content], card_id: params[:card_id], round_id: params[:round_id])
  if Card.is_correct?(@guess, @card)

    erb :'/testing'


  else
'bad'
  end
end


#check if guess can be saved without all parameters present by checking the rout
