json.project do
  json.call(@project, :title, :description)

  json.tags(@project.tags.map(&:name))

  json.links @project.links, :source, :url
end
