get '/' do
  redirect '/decks'
end

get '/session-viewer' do
  session.inspect
end
