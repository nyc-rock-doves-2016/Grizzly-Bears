post '/round' do
  @round = Round.create(user_id: session[:user_id], deck_id: params[:deck_id])
  @selected_card = @round.select_card

  redirect "/round/#{@round.id}/card/#{@selected_card.id}"
end

get '/round/:id' do
  @round = Round.find(params[:id])
  @selected_card = @round.select_card

  redirect "/round/#{@round.id}/card/#{@selected_card.id}"
end
