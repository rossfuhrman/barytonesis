class Word < ActiveRecord::Base
  before_save :translate

  def translate
    if original and not translated
      self.translated = original.dup.tap do |original|
        index, new_index = (0..(original.length - 1)).to_a.sample(2)
        original[index], original[new_index] = original[new_index], original[index].upcase
      end
    end
  end
end


