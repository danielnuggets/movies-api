json.array! @movies do |movie|
  json.partial! 'movies/attributes', movie: movie
end