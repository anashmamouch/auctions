class PlaceBid
  def initialize options
    @value = options[:value]
    @user_id = options[:user_id]
    @auction_id = options[:auction_id]

  end

  def execute
    auction = Auction.find @auction_id
    bid = auction.bids.build value: @value, user_id: @user_id

    if bid.save
      return true
    end
  end

end
