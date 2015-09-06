require "test_helper"
require "place_bid"

class PlaceBidTest < MiniTest::Test
  def setup
    #user
    @user = User.new email: "benzinoanas@gmail.com", password: "password"
    @another_user = User.new email: "anas@gmail.com", password: "password"

    #product associated to the user
    @product = Product.create! name: "A Product"
    @auction = Auction.create! value: 10, product_id: product.id
  end
  def test_it_places_a_bid

    service = PlaceBid.new(
        value: 9,
        user_id: another_user.id,
        auction_id: auction.id
        )

    refute service.execute, "Bid should not be placed"

  end

  def test_fails_to_place_bid_under_current_value


  end

  private

  attr_reader :user, :another_user, :product, :auction
end
