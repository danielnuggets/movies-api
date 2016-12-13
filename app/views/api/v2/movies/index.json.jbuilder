json.array! @movies do |movie|
  json.partial! 'api/v2/movies/attributes', movie: movie
end