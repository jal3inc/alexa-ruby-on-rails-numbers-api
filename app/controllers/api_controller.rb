class ApiController < ApplicationController
def alexa
      render :json => json_response
  end

  private

 def json_response
     parsed_request = JSON.parse(request.body.read)
     @number = parsed_request["request"]["intent"]["slots"]["Number"]["value"]
     @fact_type = parsed_request["request"]["intent"]["slots"]["FactType"]["value"]
   number_facts_uri = URI("http://numbersapi.com/#{@number}/#{@fact_type}")
 @number_fact = Net::HTTP.get(number_facts_uri)



      {
      "version": "1.0",
      "response": {
        "outputSpeech": {
          "type": "PlainText",
          "text": "#{@number_fact}"
        },
        "reprompt": {
          "outputSpeech": {
            "type": "PlainText",
            "text": ""
          }
        },
        "shouldEndSession": true
      },
      "sessionAttributes": {}
    }
  end
end
