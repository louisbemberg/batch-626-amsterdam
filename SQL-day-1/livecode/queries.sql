-- QUESTION #1
-- 1. LIST ALL CUSTOMERS (NAME & EMAIL), ORDERED ALPHABETICALLY
# hint: should give 59 results
SELECT first_name, last_name, email
FROM customers
ORDER BY first_name


-- QUESTION #2
-- 2. List tracks (Name + Composer) who belong to the 'Classical' playlist
# hint: should give 75 results
SELECT tracks.name, tracks.composer
FROM tracks
JOIN playlist_tracks ON playlist_tracks.track_id = tracks.id
JOIN playlists ON playslists.id = playlist_tracks.playlist_id
WHERE playlists.name = 'Classical'


-- QUESTION #3
-- 3. List the top 10 Artists who appear the most often in playlists
# hint: first results should be Iron Maiden - 516 appearances
SELECT artists.name, COUNT(*) c
FROM tracks
JOIN artists ON artists.id = albums.artist_id
JOIN albums ON albums.id = tracks.album_id
JOIN playlist_tracks ON playlist_tracks.track_id = tracks.id
GROUP BY artists.name
ORDER BY c DESC
LIMIT 10


-- QUESTION #4
-- 4. List the tracks which have been purchased at least twice,
-- ordered by number of purchases.
# hint : should give 256 results. Steve Harris - The Trooper should be first with 5 purchases.
# hint 2: you may need a new keyword for this... HAVING said that, good luck!
SELECT tracks.name, COUNT(*) c
FROM tracks
JOIN invoice_lines ON invoice_lines.track_id = tracks.id
GROUP BY tracks.id
HAVING c >= 2
ORDER BY c DESC


"I love you baby" - 6
"Fly me to the moon" - 4
"American Idiot" - 1
(...)

















