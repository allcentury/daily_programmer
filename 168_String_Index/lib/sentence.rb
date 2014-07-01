class Sentence

  def initialize(text)
    @text = text
  end

  def [] (index)
    words = get_words
    words.has_key?(index.to_s) ? words[index.to_s] : ""
  end

  private

  def get_words
    words = {}
    array = @text.split
    ctr = 1
    array.each do |word|
      words[ctr.to_s] = word 
      ctr += 1
    end
    words
  end
  
end
