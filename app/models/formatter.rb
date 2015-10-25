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
    if @@order == "random" && @@numbered == "1"
      return self.numberize(self.randomize)
    elsif @@order == "random" && @@numbered == '0'
      return self.randomize
    elsif @@order == "alpha" && @@numbered == '1'
      return self.numberize(self.alphabetize)
    elsif @@order == "alpha" && @@numbered == '0'
      return self.alphabetize
    else
      return ["You did not pick a format. Please select Random or Alphabetize."]
    end
  end


end