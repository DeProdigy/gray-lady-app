class Scraper

  attr_accessor :url

  def initialize(url)
    @url = url
  end

  def get_hrefs
    #anchors.last.to_s.include? "href"

    response = HTTParty.get(@url)
    doc = Nokogiri::HTML(response)
    anchors = doc.css('a').to_a
    anchors_string_array = anchors.map { |anchor| anchor.to_s }
    #binding.pry
  end

end