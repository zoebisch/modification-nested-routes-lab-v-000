module SongsHelper

  def artist_select(song, artist)
    if song.artist.nil?
      collection_select(song, :artist_id, Artist.all, :id, :name)
    else
      hidden_field_tag "song[artist_id], song.artist_id"
    end
  end

end
