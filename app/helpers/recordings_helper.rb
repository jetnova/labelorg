module RecordingsHelper
  # returns a string containing all the acts/artists stored as the recording acts
  def recording_acts_formatter(recording)
    acts = recording.recording_acts.map { |rec_act| rec_act.act.name }
    acts.join(', ')
  end
end
