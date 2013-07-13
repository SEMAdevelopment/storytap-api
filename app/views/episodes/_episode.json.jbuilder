json.id episode.id
json.name episode.name
json.transition { json.partial! 'transitions/transition', transition: episode.transition } if episode.transition
