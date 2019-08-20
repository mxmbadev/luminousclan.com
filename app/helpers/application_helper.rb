module ApplicationHelper
  def randomized_background_image
    images = ["/assets/hero/bg#{rand(4)}.png"]
    images[rand(images.size)]
  end
end
