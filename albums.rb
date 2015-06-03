

class Album
  attr_reader :id, :title, :artists, :tracks
  def initialize(id, title, artists)
    @id = id
    @title = title
    @artists = artists
    @tracks = Array.new
  end

  def minutes
    total_ms = 0.0
    @tracks.each do |track|
      total_ms += track[:duration_ms].to_f
    end
    ((total_ms/1000)/60).round(2)
    end

  def summary
    %(
Name: #{@title}
Artist(s): #{@artists}
Duration (min): #{minutes}
Tracks: #{list_tracks}
)
  end

  def list_tracks
    string = ''
    @tracks.each do |list|
      string += "- #{list[:title]}\n"
    end
    string
  end
end
