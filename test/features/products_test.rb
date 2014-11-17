require "test_helper"

class ProductsTest < ActionDispatch::IntegrationTest
  describe 'Products' do
    before 'add to db' do
      Category.create!( id: 1, name: 'metals')
      Category.create!( id: 2, name: 'gems')
      Product.create!(
        name: "Adamantium",
        description: "The hardest metal known to man, attached to Wolverine's bones!",
        shine: 4,
        price: 1399.99,
        rarity: 10,
        color: '#CCC',
        faces: 2,
        category_id: "1" )
      Product.create!(
        name: "Diamond",
        description: "It's still not as cool as Adamantium",
        shine: 10,
        price: 999.99,
        rarity: 8,
        color: '#CCC',
        faces: 9,
        category_id: "2" )
    end

    it 'should connect to product api' do
      get '/products'

      response.status.must_equal 200
      response.content_type.must_equal Mime::JSON

      assert_equal Product.count, json(response.body).size
    end

    it 'should return only products of selected id' do
      get '/products?category_id=1'
      response.status.must_equal 200
      response.content_type.must_equal Mime::JSON
      json(response.body).size.must_equal 1
    end
  end
end
