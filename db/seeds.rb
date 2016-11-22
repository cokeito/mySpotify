# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all;
Playlist.destroy_all;
Song.destroy_all;
Genre.destroy_all;

genres = Genre.create([
	{
		name: 'Rock',
	},
	{
		name: 'Pop',
	},
	{
		name: 'Folk',
	},
	{
		name: 'R&B',
	},
	{
		name: 'Rap',
	},
	{
		name: 'Hip-Hop',
	},
	{
		name: 'Indie',
	},
	{
		name: 'Metal',
	}
])

songs = Song.create([
	{
		name: 'Song 2',
		duration: '120',
		genre: Genre.first
	},
	{
		name: 'One',
		duration: '240',
		genre: Genre.last
	},
	{
		name: 'Unforgiven',
		duration: '120',
		genre: Genre.last
	},
	{
		name: 'Happy',
		duration: '120',
		genre: Genre.first
	},
		])

users = User.create([
	{
		name: 'coke',
		email: 'coke@mta.cl',
		password: 'lala123',
		role: 'admin'

	},
	{
		name: 'superman',
		email: 'super@man.com',
		password: 'lolo123',
		role: 'normal'
	}
	])


playlist_coke = User.first.playlists.build(song: Song.first).save
playlist_coke = User.first.playlists.build(song: Song.last).save

playlist_superman	= User.last.playlists.build(song: Song.first).save
