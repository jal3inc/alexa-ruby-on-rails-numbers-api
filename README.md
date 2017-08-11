# README

Ruby on Rails Rails 5.0.5
Alexa Skill Using the numbers api as a demo. 

To install:
git clone git@github.com:jal3inc/alexa-ruby-on-rails-numbers-api.git

Download Ngrok from https://ngrok.com/download
unzip /path/to/ngrok.zip

To run ngrok:
cd to dir where you unzipped it to
./ngrok http 3000
That will tunnel all requests from port 3000 to it. "Substitute ports as you see fit."
Once ngrok starts up copy the https:// address it puts out. You will need that when configuring your endpoint in the amazon console.

CD to app dir:
bundle install

Start your rails server:
rails s

Login to https://developer.amazon.com "This amazon account must be linked to your echo if not you will not be able to access the skill"
Create a new alexa skill.

Name: Number Facts
Invocation Name: number facts

Global Feild: all set to no

Next

Intent Schema: a copy of the json file is in the sample folder in the app dir. Open it up copy and paste.

Custom Slot Type: Add a new custom slot. A copy is also located in the sample folder.
  Type 	       Values 	
FACT_TYPE 	trivia | math

Next

Endpoint: Select https://
Geographical location: North America "unless u are elsewhere" and paste in the https://adress-from-ngrok.io/api/alexa

Account linking: no
Permissions: Leave all blank

Next:

Certificate for NA Endpoint: Select My development endpoint is a sub-domain of a domain that has a wildcard certificate from a certificate authority.

Next

Scroll down to Service Simulator and Enter the untterance which is also supplied for you in the sample folder.

"Alexa, ask Number Facts to tell me a math fact about 17" If everything went well you should see a valid response in the box on the right. 

Now that everything is setup all you need to do now is open your Alexa mobile app and confirm the newly made skill is enabled. If it is try it out with your echo.  "Alexa, ask Number Facts to tell me a math fact about 17" or "Alexa, ask Number Facts to tell me a math triva about 17" you can substitute either fact or trivia and you can substitute "17" for any number.
