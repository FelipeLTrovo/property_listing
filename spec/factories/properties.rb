FactoryBot.define do
  factory :property do
    name {"My Property"}
    photos {[ Rack::Test::UploadedFile.new(Rails.root.join("spec/support/photos/property_photo.jpeg")),
              Rack::Test::UploadedFile.new(Rails.root.join("spec/support/photos/property_photo.jpeg")),
              Rack::Test::UploadedFile.new(Rails.root.join("spec/support/photos/property_photo.jpeg"))
            ]}
  end
end
