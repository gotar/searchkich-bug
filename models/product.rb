class Product
  include Mongoid::Document

  searchkick autocomplete: ['name']

  field :name

  def search_data
    { name: name }
  end
end
