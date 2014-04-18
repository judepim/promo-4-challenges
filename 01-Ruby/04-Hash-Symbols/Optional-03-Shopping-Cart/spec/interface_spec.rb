require 'spec_helper'
require 'data'


describe 'Shopping cart interface' do

  result = nil

  Open3.popen2('ruby ./lib/interface.rb') do |i, o, th|

    # Add some products to the cart
    [0, 2, 4].each { |idx| i.puts PRODUCTS[idx] }

    # Enter empty product to exit the loop
    i.puts ''
    i.close

    result = o.read
  end

  total_regex = /Total price: (\d+)€/
  result.must_match(total_regex)

  m = result.match(total_regex)
  total = m.captures[0]
  [0, 2, 4].each { |idx| total -= PRICES[idx] }

  total.must_equal(0)
end
