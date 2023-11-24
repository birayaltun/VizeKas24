# Spotfiy'daki en populer 5 sanatçınin isimleri ve ID'leri
my_artists <- data.frame(
  artist = c("Drake", "Bad Bunny", "Taylor Swift", "The Weeknd", "Ed Sheeran"),
  id = c("3TVXtAsR1Inumwj472S9r4", "4q3ewBCX7sLwd24euuV69X", "06HL4z0CvFAxyc27GXpf02", "1Xyo4u8uXC1ZmMpatF05PJ", "6eUKZXaKkcviH0Ku9w2n3V")
)

# spotify_search_artist() fonksiyonunu kullanarak ID'leri çekme ve karşılaştırma
get_artist_ids <- function(artists_df) {
  ids <- vector("list", length = nrow(artists_df))
  
  for (i in seq_len(nrow(artists_df))) {
    artist_name <- artists_df[i, "artist"]
    artist_id <- spotify_search_artist(artist_name)$search_results$id[1]
    ids[[i]] <- artist_id
  }
  
  return(unlist(ids))
}

# Karşılaştırma
retrieved_ids <- get_artist_ids(my_artists)
comparison <- retrieved_ids == my_artists$id
all(comparison)