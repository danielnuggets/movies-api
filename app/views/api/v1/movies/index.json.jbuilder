json.array! @movies do |movie|
  json.partial! 'api/v1/movies/attributes', movie: movie
end