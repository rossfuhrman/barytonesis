class Word < ActiveRecord::Base
  after_create :translate

  def translate
    original = self.original
    length = original.length
    start_point = (0..(length - 1)).to_a.sample
    thinger = original.each_char{
      if index == start_point
        letter.upcase
      end
    end
    self.translated = thinger 
    self.save
  end
end


