#!/usr/bin/env ruby

require 'RMagick'
include Magick

class Memerize
  attr_accessor :memes, :meme_name, :text_top, :text_footer

  def initialize
    self.memes = {
      :cao => "images/cao_base.jpg",
      :fry => "images/fry_base.jpg",
      :yuno => "images/yuno_base.jpg",
      :falone => "images/falone_base.jpg",
      :successkid => "images/successkid_base.jpg",
      :facebookgirl => "images/facebookgirl_base.jpg"
    }
    self.meme_name = ARGV[0]
    self.text_top = ARGV[1]
    self.text_footer = ARGV[2]
    create_meme()
  end

  def create_meme()
    image = ImageList.new(@memes[@meme_name.to_sym])
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
    image.write("#{self.meme_name}.jpg")
  end
end

Memerize.new
