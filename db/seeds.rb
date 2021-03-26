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
digital = Format.create!(description: 'Digital')


darko = Act.create!(name: 'Darko')
lock_dark = RecordDeal.create!(start_date: Date.new(2014,1,1), end_date: Date.new(2021,5,1), act_id: darko.id, record_label_id: 1)
bonsai = Release.create!(title: 'Bonsai Mammoth', record_deal_id: lock_dark.id, territory_id: 1, format_id: cd.id, release_date: Date.new(2017,2,3))


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
  RecordDealRecording.create!(recording_id: recording.id, record_deal_id: lock_dark.id)
end

sea = Release.create!(title: 'Sea of Trees', record_deal_id: lock_dark.id, territory_id: 1, format_id: digital.id, release_date: Date.new(2014,9,8))
ReleaseAct.create!(act_id: darko.id, release_id: sea.id)

songs = [
  Song.create!(title: 'Prologue (A Voice Unheard)'),
  Song.create!(title: 'Canthus Viewpoints'),
  Song.create!(title: 'Atlas to Atlantis'),
  Song.create!(title: 'Hanging off a Memory'),
  Song.create!(title: 'Timepieces and Lock Shaped Hearts'),
  Song.create!(title: 'Seaward')
]

songs.each_with_index do |song, index|
  recording = Recording.create!(song_id: song.id, title: song.title, genre_id: 1)
  RecordingAct.create!(recording_id: recording.id, act_id: darko.id)
  ReleaseRecording.create!(release_id: sea.id, recording_id: recording.id, track_number: index + 1)
  RecordDealRecording.create!(recording_id: recording.id, record_deal_id: lock_dark.id)
end
