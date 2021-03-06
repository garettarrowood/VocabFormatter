class Formatter

  cattr_accessor :content, :numbered, :order

  def self.arrayed
    @@content.split(/\r\n/)
  end

  def self.randomize
    arrayed.shuffle
  end

  def self.alphabetize
    arrayed.sort
  end

  def self.numberize(array)
    i=0
    array.collect do |word|
      i += 1
      "#{i}. #{word}"
    end
  end

  def self.format
    if @@order == "random" && @@numbered
      return self.numberize(self.randomize)
    elsif @@order == "random" && !@@numbered
      return self.randomize
    elsif @@order == "alpha" && @@numbered
      return self.numberize(self.alphabetize)
    elsif @@order == "alpha" && !@@numbered
      return self.alphabetize
    else
      return ["", "Enter your vocab in the window to the left.", "", "Items are separated line, so be sure to press enter between each word."]
    end
  end

end