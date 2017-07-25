User.create email: 'example@domain.com', password: '123456789'

products = []

50.times do
  products << Product.create!(
    name: FFaker::Product.product_name,
    description: FFaker::Product.product,
    amount: rand(100),
    unit: 'kg',
    color: Product.colors.keys.to_a.sample
  )
end

20.times do
  ProductList.create!(
    name:  FFaker::Product.product_name,
    products: products.sample(1 + rand(products.count))
  )
end