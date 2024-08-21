resource "spotify_playlist" "punjabi" {
  name ="Punjabi Songs"
  tracks = ["0YQJoDL6f46J0n1rOVkpxJ","131yybV7A3TmC34a0qE8u8"]
}

data "spotify_search_track" "karanaujla" {
  artist = "Karan Aujla"
}

resource "spotify_playlist" "Aujla" {
  name ="Aujla"
  tracks = [data.spotify_search_track.karanaujla.tracks[0].id,data.spotify_search_track.karanaujla.tracks[1].id,data.spotify_search_track.karanaujla.tracks[2].id]
}