require "rails_helper"

RSpec.describe "AnswerEndpointSpec", type: :request do

  it "returns results when given answers" do
    make_questions

    post "/api/v1/answers" #how do I send params here
    #answers = {"1"=>"1", "2"=>"3", "3"=>"4", "4"=>"2", "5"=>"5", "6"=>"5", "7"=>"1", "8"=>"3", "9"=>"2", "10"=>"5"}
  end

end
