json.project do
  json.call(@project, :title, :description, :thumbnail_url, :id)

  json.tags(@project.tags.map(&:name))

  json.links @project.links, :source, :url
end
