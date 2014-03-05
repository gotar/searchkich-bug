class Product
  include Mongoid::Document

  searchkick autocomplete: ['name']

  field :name

  has_and_belongs_to_many :categories, inverse_of: nil

  def search_data
    {
      name: name,
      category_ids: categories.pluck(:id)
    }
  end
end
