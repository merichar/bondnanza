# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

["watched","watching","unwatched"].each do |s|
  WatchStatus.find_or_create_by(key: s)
end

default_status = WatchStatus.find_by_key('unwatched')

[ "tt0055928", "tt0057076", "tt0058150", "tt0059800", "tt0062512",
  "tt0064757", "tt0066995", "tt0070328", "tt0071807", "tt0076752",
  "tt0079574", "tt0082398", "tt0086034", "tt0086006", "tt0090264",
  "tt0093428", "tt0097742", "tt0113189", "tt0120347", "tt0143145",
  "tt0246460", "tt0381061", "tt0830515", "tt1074638"].each do |m|

  Movie.find_or_create_by(imdb: m, watch_status: default_status)
  
end
