class Book < ActiveRecord::Base
  belongs_to :user
  has_one :checkout, dependent: :destroy

  mount_uploader :book_image, BookImageUploader

  def self.search(search)
    where("title LIKE ?", "%#{search}%")
    #  where("author LIKE ?", "%#{search}%")
  end
end
