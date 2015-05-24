module CustomHelpers

  def svg_icon(icon, klass, width, height)
    content_tag :svg, class: "icon icon--#{icon} #{klass}", viewBox: "0 0 #{width} #{height}" do
      content_tag :use, :"xlink:href" => "##{icon}" do
      end
    end
  end

  def copyright_year_range(start_year)
    current_year = Time.current.year
    if current_year > start_year
      "#{start_year} - #{current_year}"
    else
      "#{start_year}"
    end
  end

end
