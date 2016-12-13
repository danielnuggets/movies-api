json.id movie.id
json.title movie.title
json.duration movie.duration
json.genre movie.genre
json.description movie.description
json.actors movie.actors.each do |actor|
  json.fullName actor.name
  json.age actor.age
  json.salary actor.salary
end