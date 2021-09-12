# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(email: 'coachone@captainu.com', password: 'badmintonbuddy@8660', password_confirmation: 'badmintonbuddy@8660')
user.save!

# FIRST TOURNAMENT START
tournament = Tournament.new(name: 'ECB cricket league', city: 'Bengaluru', state: 'karnataka', start_date: Date.today - 1)
tournament.save!

team = tournament.teams.create(name: 'Royal Challengers', age_group: '18-38', coach: 'KL Rahul')
player = team.players.create(first_name: 'Ishan', last_name: 'Ram', 'height': 185, 'weight': 84, birthday: '1988-05-30', graduation_year: '2010', position: '5', recruit: true)
assessment = player.assessments.create(tournament_id: team.tournament_id, user_id: user.id, rating: 3)
assessment.notes.create(note: 'Need to improve cover drive', user_id: user.id)
assessment.notes.create(note: 'Improve running between wickets', user_id: user.id)
player = team.players.create(first_name: 'Robin', last_name: 'Uttappa', 'height': 185, 'weight': 84, birthday: '1988-05-30', graduation_year: '2010', position: '5', recruit: true)
assessment = player.assessments.create(tournament_id: team.tournament_id, user_id: user.id, rating: 5)
assessment.notes.create(note: 'Need to improve leg drive', user_id: user.id)
assessment.notes.create(note: 'Improve running between wickets', user_id: user.id)

team = tournament.teams.create(name: 'Delhi Capitals', age_group: '18-38', coach: 'Sehwag')
player = team.players.create(first_name: 'Rishab', last_name: 'Ram', 'height': 185, 'weight': 84, birthday: '1988-05-30', graduation_year: '2010', position: '5', recruit: true)
assessment = player.assessments.create(tournament_id: team.tournament_id, user_id: user.id, rating: 3)
assessment.notes.create(note: 'Need to improve stamina', user_id: user.id)
assessment.notes.create(note: 'Start practising defensive shots', user_id: user.id)

# FIRST TOURNAMENT END

# SECOND TOURNAMENT START
tournament = Tournament.new(name: 'ECB badminton league', city: 'Mysore', state: 'karnataka', start_date: Date.today - 1)
tournament.save!

team = tournament.teams.create(name: 'Punjab panthers', age_group: '18-38', coach: 'Sindhu')
player = team.players.create(first_name: 'Manish', last_name: 'Kumar', 'height': 175, 'weight': 80, birthday: '1992-05-30', graduation_year: '2014', position: '5', recruit: true)
assessment = player.assessments.create(tournament_id: team.tournament_id, user_id: user.id, rating: 3)
assessment.notes.create(note: 'Need to improve back hand', user_id: user.id)

team.players.create(first_name: 'Sai', last_name: 'Pallavi', 'height': 180, 'weight': 84, birthday: '1988-05-30', graduation_year: '2010', position: '5', recruit: true)

team = tournament.teams.create(name: 'Bengaluru smashers', age_group: '18-38', coach: 'Rakesh Sharma Odiyoor')
team.players.create(first_name: 'Sai', last_name: 'Krishna', 'height': 175, 'weight': 80, birthday: '1992-05-30', graduation_year: '2014', position: '2', recruit: true)

player = team.players.create(first_name: 'Sai', last_name: 'Ram', 'height': 185, 'weight': 84, birthday: '1988-05-30', graduation_year: '2010', position: '5', recruit: true)
assessment = player.assessments.create(tournament_id: team.tournament_id, user_id: user.id, rating: 3)
assessment.notes.create(note: 'Need to improve smashing', user_id: user.id)