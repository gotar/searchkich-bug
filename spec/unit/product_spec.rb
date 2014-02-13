require_relative '../../app'

describe Product do
  describe 'searchkick' do

    before do
      Mongoid.purge!
      Product.create(name: 'foo')
      Product.searchkick_index.delete
      Product.reindex
    end

    let(:create_products) do
      Product.create(name: 'abc')
      Product.create(name: 'cba')
    end

    it 'return proper number of products when search by searchkick' do
      create_products
      expect(Product.search('*').count).to eql(3)
    end

    it 'return proper product when searching product created before reindex' do
      create_products
      expect(Product.search('foo').first.name).to eql('foo')
    end

    it 'return proper product when searching product created after reindex' do
      create_products
      expect(Product.search('abc').first.name).to eql('abc')
    end
  end
end
