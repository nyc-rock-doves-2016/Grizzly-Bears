User.create(username: 'john', password: 'pw')
User.create(username: 'josh', password: 'pw')
User.create(username: 'ayaz', password: 'pw')
Round.create(user_id: '1', deck_id: '1')
Deck.create(deck_name: 'Grizzly Bear')
Deck.create(deck_name: 'Calculus')
Deck.create(deck_name: 'DBC')


Card.create(question: 'Best bear species', answer: 'grizzy bears', deck_id: '1')
Card.create(question: 'Are grizzlies social animals?', answer: 'true', deck_id: '1')
Card.create(question: 'Grizzly bear vs human, who wins?', answer: 'grizzly bear', deck_id: '1')


Card.create(question: '1 + 1', answer: '2', deck_id: '2')
Card.create(question: '1 - 1', answer: '0', deck_id: '2')
Card.create(question: '1 X 1', answer: '1', deck_id: '2')
Card.create(question: '1/1', answer: '1', deck_id: '2')

Card.create(question: 'Does Ayaz put in the work?', answer: 'Without a doubt', deck_id: '3')
Card.create(question: "What is Ayaz's favorite pasttime?", answer: 'Putting in the work', deck_id: '3')

# Guess.create(content: 'test guess', card_id: '1', user_id: '1', round_id: '1')
# Guess.create(content: 'test guess2', card_id: '2', user_id: '1', round_id: '1')
# Guess.create(content: 'test guess3', card_id: '3', user_id: '1', round_id: '1')
