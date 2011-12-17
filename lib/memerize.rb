require 'rubygems'
require 'RMagick'
include Magick

class Memerize
  attr_accessor :memes, :meme_name, :text_top, :text_footer

  def initialize
    self.memes = {
      :cao => "/cao_base.jpg",
      :fry => "/fry_base.jpg",
      :yuno => "/yuno_base.jpg",
      :falone => "/falone_base.jpg",
      :successkid => "/successkid_base.jpg",
      :facebookgirl => "/facebookgirl_base.jpg"
    }
    @meme_name, @text_top, @text_footer = ARGV[0], ARGV[1], ARGV[2]
    create_meme()
  end

  def create_meme()
    dir_images = File.expand_path(File.dirname(__FILE__) + '/../lib/images')
    image = ImageList.new(dir_images + @memes[@meme_name.to_sym])
    text = Draw.new
    text.pointsize = 46
    text.stroke = "black"
    text.stroke_width = 2
    text.fill = "white"
    text.font_family = "Impact-Normal"
    text.font_weight = BoldWeight

    text.annotate(image, 0, 0, 0, 9, self.text_top) {
      self.gravity = NorthGravity
    }
    text.annotate(image, 0, 0, 0, 9, self.text_footer) {
      self.gravity = SouthGravity
    }
    image.write("#{@meme_name}.jpg")
  end
end
