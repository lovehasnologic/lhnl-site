xml.instruct!
xml.feed "xmlns" => "http://www.w3.org/2005/Atom" do
  site_url = "http://blog.url.com/"
  xml.title "Michael Gibson"
  xml.subtitle "Designer, Writer, Builder"
  xml.id URI.join(site_url, blog("writing").options.prefix.to_s)
  xml.link "href" => URI.join(site_url, blog("writing").options.prefix.to_s)
  xml.link "href" => URI.join(site_url, current_page.path), "rel" => "self"
  xml.updated(blog("writing").articles.first.date.to_time.iso8601) unless blog("writing").articles.empty?
  xml.author { xml.name "Michael Gibson" }

  blog("writing").articles[0..10].each do |article|
    xml.entry do
      xml.title article.title
      xml.link "rel" => "alternate", "href" => URI.join(site_url, article.url)
      xml.id URI.join(site_url, article.url)
      xml.published article.date.to_time.iso8601
      xml.updated File.mtime(article.source_file).iso8601
      xml.author { xml.name "Michael Gibson" }
      xml.content article.body, "type" => "html"
    end
  end
end
