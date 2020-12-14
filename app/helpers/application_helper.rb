module ApplicationHelper
  def no_cache
    content_for :meta_tags do
      tag.meta name: "turbolinks-cache-control", content: "no-cache"
    end
  end
end
