### About
A simple API that provides questions and scoring for the Five Factor Personality Test!

### Setup
`git clone https://github.com/cheljoh/personality_test_api.git`

`cd personality_test_api`

`bundle`

`rake db:reset`

Import data from CSV into database by running: `rake import:questions`

Run `rspec` to make sure all tests are passing

### Usage

Start server by running command `rails s`

Endpoints:

 * GET personalitytest.herokuapp.com/api/v1/questions

 * POST personalitytest.herokuapp.com/api/v1/questions

POST requires json params {"location" => whatever your url is, "answers" => {"3" => "2", "50" => "5"}}.
Inner "answer params" has the question id as they key. The value is the user's response for that question (between 1 and 5). Should have 50 answer responses. The response simply returns the following JSON key/value pairs:
 * "{\"extraversion\":30,\"agreeableness\":34,\"conscientiousness\":45,\"emotional_stability\":30,\"intellect\":42}" - the category and the score. 

Scores are out of 50, so score of 30/50 would be considered "moderate." 

Sources: http://ipip.ori.org/
