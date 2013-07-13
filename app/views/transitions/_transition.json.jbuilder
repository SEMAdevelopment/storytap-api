json.type transition.type
json.options transition.render_options if transition.has_options?
json.next transition.next.id if transition.try(:next)
