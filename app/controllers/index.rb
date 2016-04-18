get '/' do
  redirect '/decks'
end

#ZM: what is this?
get '/session-viewer' do
  session.inspect
end
