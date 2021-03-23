# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recording.destroy_all
ReleaseAct.destroy_all
Release.destroy_all
Format.destroy_all
Act.destroy_all
Song.destroy_all
RecordingAct.destroy_all
ReleaseRecording.destroy_all

cd = Format.create!(description: 'Compact Disk - Digipak')
vinyl = Format.create!(description: '12" Vinyl')

darko = Act.create!(name: 'Darko')
bonsai = Release.create!(title: 'Bonsai Mammoth', record_label_id: 1, territory_id: 1, format_id: cd.id, release_date: Date.new(2017,2,3))
ReleaseAct.create!(act_id: darko.id, release_id: bonsai.id)

songs = [
  Song.create!(title: 'Life Forms'),
  Song.create!(title: 'Just a Short Line'),
  Song.create!(title: 'Set in our Ways'),
  Song.create!(title: 'This is Love?'),
  Song.create!(title: 'I Knew I Should Have Taken That Left Turn at Albuquerque'),
  Song.create!(title: 'The Chernobyl Effect'),
  Song.create!(title: 'Hiraeth'),
  Song.create!(title: 'In the Company of Wolves'),
  Song.create!(title: 'Lifeblood'),
  Song.create!(title: 'Dead Hordes'),
  Song.create!(title: 'We Can Stand for Something More')
]

songs.each_with_index do |song, index|
  recording = Recording.create!(song_id: song.id, title: song.title, genre_id: 1)
  RecordingAct.create!(recording_id: recording.id, act_id: darko.id)
  ReleaseRecording.create!(release_id: bonsai.id, recording_id: recording.id, track_number: index + 1)
end
