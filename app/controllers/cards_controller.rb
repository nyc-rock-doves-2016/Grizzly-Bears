get '/round/:round_id/card/:card_id' do
  @round = Round.find(params[:round_id])
  @card = Card.find(params[:card_id])
  erb :'/cards/show'
end

