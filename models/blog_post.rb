require 'time'
require 'lazyrecord'


class BlogPost < LazyRecord
  attr_reader :title, :author, :image, :body, :time, :human_time, :subtitle
  def initialize(title:, author:, image:, body:, subtitle:)
    @title = title
    @subtitle = subtitle
    @author = author
    @image = image
    @body = body
    @time = Time.now
    @human_time = @time.strftime("%d of %B, %Y at %k:%M")
  end
end
