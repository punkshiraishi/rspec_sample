class Uru < ApplicationRecord
  before_save :judge_uru
  validates :year, presence: true
  validates :year, numericality:{only_integer:true, greater_than_or_equal_to:0}


  private

  def judge_uru
    if year.modulo(100) == 0
      if year.modulo(400) == 0
        self.is_uru = true
      end
    elsif year.modulo(4) == 0
      self.is_uru = true
    end
  end
end
