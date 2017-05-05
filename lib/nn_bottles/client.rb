module NnBottles
  class Client

    attr_reader :bottles, :song
    def initialize(bottles=99)
      raise ArgumentError.new(bottles) unless bottles.is_a?(Fixnum)

      @bottles = bottles
      @song = []
    end

    def sing
      verses(bottles)
      song
    end

    private

    def add_to_song(current_line)
      @song << current_line
    end

    def verses(current_bottle)
      return last_verse() if current_bottle == 0
      next_bottle = current_bottle - 1
      add_to_song "#{current_bottle} bottles of beer on the wall, #{current_bottle} bottles of beer."
      add_to_song "Take one down, pass it around, #{next_bottle} bottles of beer on the wall."
      verses(next_bottle)
    end

    def last_verse
      add_to_song "No more bottles of beer on the wall, no more bottles of beer."
      add_to_song "We've taken them down and passed them around; now we're drunk and passed out!"
    end
  end
end