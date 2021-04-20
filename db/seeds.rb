require 'faker'

puts 'Cleaning database'
Customer.destroy_all
Merchant.destroy_all
Cart.destroy_all
Book.destroy_all

puts 'Create new customer'
customer = Customer.new(
  address: '1428 Elm st',
  email: 'arturoestradanav@gmail.com',
  name: 'Arturo',
  password: 'Loremipsum'
)
customer.save

puts 'Create new merchant'
merchant = Merchant.new(
  email: 'contact@arturoestnav.com',
  name: 'Arturian bookstores',
  password: 'Loremipsum',
  phone: '555-895-1237'
)
merchant.save

puts 'Create new cart'
cart = Cart.new(
  customer: Customer.last
)
cart.save

puts 'Create new books'
30.times do
  new_book = Book.new(
    title: Faker::Book.title,
    description: Faker::GreekPhilosophers.quote,
    author: Faker::Book.author,
    price: Faker::Commerce.price(range: 0..54.99),
    merchant: Merchant.last,
    merchant_name: Merchant.last.name
  )
  new_book.save
  puts "Created book #{new_book.id}"
end
