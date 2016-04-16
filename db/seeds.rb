User.create(username: 'testuser', password: 'pw')
User.create(username: 'testuser2', password: 'pw')
Round.create(user_id: '1', deck_id: '1')
Deck.create(deck_name: 'testdeck')


Card.create(question: 'test question1', answer: 'test answer1', deck_id: '1')

Card.create(question: 'test question2', answer: 'test answer2', deck_id: '1')
Card.create(question: 'test question3', answer: 'test answer3', deck_id: '1')
Card.create(question: 'test question4', answer: 'test answer4', deck_id: '1')

Guess.create(content: 'test guess', card_id: '1', user_id: '1', round_id: '1')
Guess.create(content: 'test guess2', card_id: '2', user_id: '1', round_id: '1')
Guess.create(content: 'test guess3', card_id: '3', user_id: '1', round_id: '1')
