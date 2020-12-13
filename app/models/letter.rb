class Letter < ApplicationRecord
  validates :body, :sender, presence: true

  scope :recent_first, -> { order(created_at: :desc) }

  def deliver
    transaction do
      if save
        alert_elves
        address_letter
        apply_stamp
        sprinkle_magic
        post
      end
    end
  end

  private

    # save
    # alert_elves
    # address_letter
    # apply_stamp
    # sprinkle_magic
    # post

    # if save
    #   if alert_elves
    #     if address_letter
    #       if apply_stamp
    #         if sprinkle_magic
    #           post
    #         end
    #       end
    #     end
    #   end
    # end

    # return unless save
    # return unless alert_elves
    # return unless address_letter
    # return unless apply_stamp
    # return unless sprinkle_magic
    # post

    # in_sequence do
    #   [
    #     ->{ save },
    #     ->{ alert_elves },
    #     ->{ address_letter },
    #     ->{ apply_stamp },
    #     ->{ sprinkle_magic },
    #     ->{ post }
    #   ]
    # end
    # def in_sequence
    #   yield.each do |step|
    #     if step.call
    #       next
    #     else
    #       return false
    #     end
    #   end

    #   true
    # end

    # transaction do
    #   if save
    #     alert_elves
    #     address_letter
    #     apply_stamp
    #     sprinkle_magic
    #     post
    #   end
    # end

    # begin
    #   transaction do
    #     save!
    #     alert_elves
    #     address_letter
    #     apply_stamp
    #     sprinkle_magic
    #     post
    #   end
    # rescue ActiveRecord::RecordInvalid
    # end

    # begin
    #   transaction do
    #     if save
    #       alert_elves
    #       address_letter
    #       apply_stamp
    #       sprinkle_magic
    #       post
    #     end
    #   end
    # rescue FailedStepError => e
    #   errors.add(:base, e.message)

    #   false
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
      # raise "Oops, that went wrong"
      true
    end
end