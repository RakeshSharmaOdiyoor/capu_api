# API Documentation
We are using JWT token based authentication for API communications. The application is tested using POSTMAN api testing tool. The application is made as simple as possible provided to be delivered within the given time frame.

Steps:
Please refer seeds file. Some data is hardcoded into the database. Please run rails db:seed after migration

1. Login
API ENDPOINT: 
	http://localhost:3000/api/v0/login
params: 
	email: coachone@captainu.com
	password: badmintonbuddy@8660
response:
	{
    "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJkYXRhIjp7ImVtYWlsIjoiY29hY2hvbmVAY2FwdGFpbnUuY29tIn0sInN1YiI6MSwiZXhwIjoxNjMyNjMzMjY4fQ.nf3k-jgBSleaPhuAEOwu0nC7CjSk5111B2vohkcjEHKganO8Yz5PHhS1fINtxUqzJXtVjilH9bpbr2eSl0SsMw"
	}
	We will send the authorization bearer token if successfully logged in. We need to send this token as Bearer in authorization header in further API's for authorizing the request

params:
	Authorization: Bearer token

	we need to send the token received on login as Authorization header Bearer token on all further API calls
	If authorization succeds successfully we will receive the similar responses given below based on the data in database

2. Tournament
API ENDPOINT:
	http://localhost:3000/api/v0/tournaments

response:
	{
    "tournaments": "[{\"id\":1,\"name\":\"ECB cricket league\",\"city\":\"Bengaluru\",\"state\":\"karnataka\",\"start_date\":\"2021-09-11\",\"created_at\":\"2021-09-12T04:59:35.695Z\",\"updated_at\":\"2021-09-12T04:59:35.695Z\"},{\"id\":2,\"name\":\"ECB badminton league\",\"city\":\"Mysore\",\"state\":\"karnataka\",\"start_date\":\"2021-09-11\",\"created_at\":\"2021-09-12T04:59:35.925Z\",\"updated_at\":\"2021-09-12T04:59:35.925Z\"}]"
	}
	

3. Team
API ENDPOINT:
	http://localhost:3000/api/v0/tournaments/1/teams
response:
	{
    "teams": "[{\"id\":1,\"name\":\"Royal Challengers\",\"age_group\":\"18-38\",\"coach\":\"KL Rahul\",\"tournament_id\":1,\"created_at\":\"2021-09-12T04:59:35.736Z\",\"updated_at\":\"2021-09-12T04:59:35.736Z\"},{\"id\":2,\"name\":\"Delhi Capitals\",\"age_group\":\"18-38\",\"coach\":\"Sehwag\",\"tournament_id\":1,\"created_at\":\"2021-09-12T04:59:35.875Z\",\"updated_at\":\"2021-09-12T04:59:35.875Z\"}]"
	}

4. Player
API ENDPOINT:
	http://localhost:3000/api/v0/tournaments/1/teams/4/players
response:
	{
    "players": "[{\"id\":6,\"first_name\":\"Sai\",\"last_name\":\"Krishna\",\"height\":175,\"weight\":80,\"birthday\":\"1992-05-30\",\"graduation_year\":2014,\"position\":\"2\",\"recruit\":true,\"team_id\":4,\"created_at\":\"2021-09-12T04:59:35.976Z\",\"updated_at\":\"2021-09-12T04:59:35.976Z\"},{\"id\":7,\"first_name\":\"Sai\",\"last_name\":\"Ram\",\"height\":185,\"weight\":84,\"birthday\":\"1988-05-30\",\"graduation_year\":2010,\"position\":\"5\",\"recruit\":true,\"team_id\":4,\"created_at\":\"2021-09-12T04:59:35.982Z\",\"updated_at\":\"2021-09-12T04:59:35.982Z\"}]"
	}

5. Assessment
API ENDPOINT:
	http://localhost:3000/api/v0/tournaments/1/teams/2/players/2/assessments
response:
	{
    "assessments": "[{\"id\":2,\"assessment_type\":\"event\",\"player_id\":2,\"tournament_id\":1,\"user_id\":1,\"rating\":5,\"created_at\":\"2021-09-12T04:59:35.852Z\",\"updated_at\":\"2021-09-12T04:59:35.852Z\"}]"
	}

6. Note
API ENDPOINT:
	http://localhost:3000/api/v0/tournaments/1/teams/2/players/2/assessments/2/notes
response:
	{
    "notes": "[{\"id\":3,\"assessment_id\":2,\"note\":\"Need to improve leg drive\",\"user_id\":1,\"created_at\":\"2021-09-12T04:59:35.862Z\",\"updated_at\":\"2021-09-12T04:59:35.862Z\"},{\"id\":4,\"assessment_id\":2,\"note\":\"Improve running between wickets\",\"user_id\":1,\"created_at\":\"2021-09-12T04:59:35.869Z\",\"updated_at\":\"2021-09-12T04:59:35.869Z\"}]"
	}

This application consits simple API requests. Within the given timeframe i have done it as simple as it could be
