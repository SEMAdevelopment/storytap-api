json.partial! 'story', story: @story

json.episodes @story.episodes do |episode|
  json.partial! 'episodes/episode', episode: episode
end
