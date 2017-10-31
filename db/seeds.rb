FavoriteMovie.destroy_all
User.destroy_all
Movie.destroy_all

users = []
movies = []

4.times do
    users << User.create(
        email: FFaker::Internet.email,
        password: 'blahblah',
        password_confirmation: 'blahblah'
    )
end
movies << Movie.create(
    omdb_id:'tt2294629'
)
movies << Movie.create(
    omdb_id: 'tt0118715'
)
movies << Movie.create(
    omdb_id: 'tt0910936'
)
movies << Movie.create(
    omdb_id: 'tt0181875'
)
users.each do |user|
    movies.each do |movie|
        FavoriteMovie.create(
        user_id: user.id,
        movie_id: movie.id
)
    end 
end
    