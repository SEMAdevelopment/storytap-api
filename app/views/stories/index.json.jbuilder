json.count @stories.count
json.page @stories.current_page
json.stories @stories do |story|
  json.id story.id
  json.title story.title
  json.author story.author_id
  json.description story.description
end
