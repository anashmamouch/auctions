require "test_helper"
require "place_bid"

class PlaceBidTest < MiniTest::Test
  def test_it_places_a_bid
    #user
    user = User.new email: "benzinoanas@gmail.com", password: "password"
    another_user = User.new email: "anas@gmail.com", password: "password"

    #product associated to the user
    product = Product.create! name: "A Product"
    auction = Auction.create! value: 10, product_id: product.id

    service = PlaceBid.new value: 11, user_id: another_user, auction_id: auction.id

    assert_equal 11, auction.current_bid
  end

end
