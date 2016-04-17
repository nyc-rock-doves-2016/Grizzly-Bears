post '/guesses' do

  #come back to this. new vs save???
  @card = Card.find(params[:card_id])
  @guess = Guess.create(user_id: session[:user_id], content: params[:content], card_id: params[:card_id], round_id: params[:round_id])

  if Card.is_correct?(@guess, @card)
    redirect "/round/#{params[:round_id]}"
  else
    @errors = ["Incorrect answer, fool. The correct answer is #{@card.answer}"]
    redirect "/round/#{params[:round_id]}"

  end
end


#
