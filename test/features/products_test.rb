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
    end

    it 'should connect to product api' do
      get '/products'

      response.status.must_equal 200
      response.content_type.must_equal Mime::JSON

      assert_equal Product.count, json(response.body).size
    end

    it 'should return only products of specific category_id' do
      get '/products?category_id=1'
      response.status.must_equal 200
      response.content_type.must_equal Mime::JSON
      json(response.body).size.must_equal 1
    end

    it 'should create a product with valid data' do
      post '/products', {
        name: "Diamond",
        description: "It's still not as cool as Adamantium",
        shine: 10,
        price: 999.99,
        rarity: 8,
        color: '#CCC',
        faces: 9,
        category_id: "2"
      }.to_json,
      {
        'Accept' => 'application/json',
        'Content-Type' => 'application/json'
      }
      response.status.must_equal 201
      response.content_type.must_equal Mime::JSON

      product = json(response.body)
      response.location.must_equal product_path Product.last
      product[:name].must_equal "Diamond"
    end

    it 'should not create a product with invalid data' do
      post '/products', {
        name: nil,
        description: "It's still not as cool as Adamantium",
        shine: 10,
        price: 999.99,
        rarity: 8,
        color: '#CCC',
        faces: 9,
        category_id: "2"
      }.to_json,
      {
        'Accept' => 'application/json',
        'Content-Type' => 'application/json'
      }
      product = json(response.body)
      response.status.must_equal 422
    end

    it 'should delete a product' do
      delete '/products/1'
      response.status.must_equal 204
    end

    it 'should update a product' do
      @product = Product.create!(
      name: "Not Adamantium",
      description: "The hardest metal known to man, attached to Wolverine's bones!",
      shine: 4,
      price: 1399.99,
      rarity: 10,
      color: '#CCC',
      faces: 2,
      category_id: "1" )

      patch "/products/#{ @product.id }" , {
        name: "Gold"
      }.to_json,
      {
        'Accept' => 'application/json',
        'Content-Type' => 'application/json'
      }

      response.status.must_equal 200
    end
  end
end
