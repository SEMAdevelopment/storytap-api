ActiveAdmin.register Transition do

  index do
    column :name
    column :type
    column :next
    default_actions
  end

  form do |f|
    f.inputs "Info" do
      f.input :story
      f.input :next
      f.input :type, as: :select, collection: Transition.types
    end
    f.actions
  end
end
