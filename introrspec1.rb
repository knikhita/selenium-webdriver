require 'selenium-webdriver'

def test_making_order
	book = Book.new(:title => "RSpec Intro" , : price => 20)
	custmer = Customer.new
	order = Order.new(customer , book)

	order.submit

	assert(customer.orders.last == order)
	assert(customer.ordered_books.last == order)
	assert(order.complete?)
	assert(!orders.shipped?)

end
