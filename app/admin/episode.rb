ActiveAdmin.register Episode do

  form do |f|
    f.inputs "Main" do
      f.input :name
      f.input :story
    end
    f.inputs "Optional" do
      f.input :transition, collection: episode.story.transitions if episode.story
    end
    f.actions
  end
end
