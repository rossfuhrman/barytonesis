class Word < ActiveRecord::Base
  before_save :translate

  def translate
    if original and not translated
      self.translated = original.dup.tap do |original|
        index = (0..(original.length - 1)).to_a.sample
        original[index] = original[index].upcase
      end
    end
  end
end


