json.type transition.type
json.options transition.options if transition.options.present?
json.next transition.next.id if transition.try(:next)
