class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave


  #almu:
  # THIS ARE THINGS WE CAN DO WITH THE PICTURE (CODE FROM THE LECTURE)

  # process eager: true  # Force version generation at upload time.

  # process convert: 'jpg'

  # version :thumnail do
  #   resize_to_fit 256, 256
  # end

  # version :bright_face do
  #   cloudinary_transformation effect: "brightness:30", radius: 20,
  #     width: 150, height: 150, crop: :thumb, gravity: :face
  # end
end


