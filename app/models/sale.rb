class Sale < ApplicationRecord
  attr_accessor :name, :file, :description, :quantity, :address, :client
  mount_uploader :file, SalesUploader

end
