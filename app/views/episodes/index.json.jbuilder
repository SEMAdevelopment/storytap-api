json.episodes @episodes do |episode|
json.partial! 'episode', episode: episode
end
