module LocationsHelper
  def image_for(location)
    if location.image.present?
      location.image
    else
      'hawaii.jpg'
    end
  end
end
