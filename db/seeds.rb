Dog.create!([
  {name: "Dottie", age: 7, breed: "bull-terrier", user_id: 1},
  {name: "Princess", age: 10, breed: "dalmation", user_id: 1},
  {name: "Chief", age: 5, breed: "German Shepard", user_id: 1},
  {name: "Chief", age: 5, breed: "German Shepard", user_id: 1},
  {name: "Test", age: 5, breed: "Test dog", user_id: 1},
  {name: "Test", age: 5, breed: "Test dog", user_id: 1}
])
User.create!([
  {name: "Stassie", email: "stassie@gmail.com", password_digest: "$2a$12$Q3nP2j3FYpHhnIgFk1InoOkeBUtzMCE9dlUlkPWQDP7a34eQrKjcS"}
])
