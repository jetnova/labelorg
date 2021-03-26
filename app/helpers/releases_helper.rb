module ReleasesHelper
  # returns a string containing all the acts/artists stored as the release acts
  def release_acts_formatter(release)
    acts = release.release_acts.map { |rel_act| rel_act.act.name }
    acts.join(', ')
  end
end
