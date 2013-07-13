ActiveAdmin.register Scene do
  action_item do
    link_to('Preview', story_episode_scene_preview_path(scene.episode.story, scene.episode, scene))
  end
end
