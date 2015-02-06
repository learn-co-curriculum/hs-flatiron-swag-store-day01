class Item
  attr_accessor :name, :image_url, :price, :count

  ALL_ITEMS = []

  def initialize(name, image_url, price, count)
    @name = name
    @image_url = image_url
    @price = price
    @count = count
    ALL_ITEMS << self
  end

  def self.all
    ALL_ITEMS
  end

end