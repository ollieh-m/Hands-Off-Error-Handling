class Letter < ApplicationRecord
  def deliver
    # save
    alert_elves
    address_letter
    apply_stamp
    sprinkle_magic
    post
  end

  private

    # def in_sequence
    #   yield.each do |step|
    #     if step
    #       next
    #     else
    #       return false
    #     end
    #   end

    #   true
    # end

    def alert_elves
    end

    def address_letter
    end

    def apply_stamp
    end

    def sprinkle_magic
    end

    def post
      Letter.find(1000059595)
    end
end