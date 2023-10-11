class SlotMachine
  ITEMS = %w[🤩 ⭐️ 🛎 7️⃣ 🍒].reverse

  def initialize(reels = %w[🤩 🤩 🤩])
    @reels = reels
  end

  def play
    60.times do
      shuffle_reels
      print @reels.join("\t") + "\r"
      # \r return carriage
      $stdout.flush
      sleep(0.03)
    end
    sleep(0.5)
    shuffle_reels
  end

  def score
    if three_of_the_same?
      # Find the item that is repeated
      repeated_item = @reels[0]
      # Get the value of the item
      value_of_the_item = ITEMS.index(repeated_item) + 1
      # Multiply by 10
      value_of_the_item * 10
    elsif two_of_the_same_plus_joker?
      # Find the item that is repeated
      repeated_item = @reels.sort[1]
      # Get the value of the item
      value_of_the_item = ITEMS.index(repeated_item) + 1
      # Multiply by 5
      value_of_the_item * 5
    else
      0
    end
  end

  private

  def shuffle_reels
    @reels = @reels.map { ITEMS.sample }
  end

  def three_of_the_same?
    @reels.uniq.count == 1
  end

  def two_of_the_same_plus_joker?
    @reels.uniq.count == 2 && @reels.include?("🤩")
  end
end
