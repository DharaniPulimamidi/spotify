resource "spotify_playlist" "Bollywood" {
    name = "Bollywood"
    tracks = ["6Ee9j3KfgdNTlXcK2XSpH6"]
}

data "spotify_search_track" "Eminem" {
    artist = "Eminem"
  
}

resource "spotify_playlist" "slimShady" {
    name = "Slim Shady"
    tracks = [data.spotify_search_track.Eminem.tracks[0].id,
    data.spotify_search_track.Eminem.tracks[1].id,
    data.spotify_search_track.Eminem.tracks[2].id]

  
}