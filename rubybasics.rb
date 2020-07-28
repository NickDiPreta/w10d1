def getCount(inputStr)
    num = inputStr.count("aeiou")
    puts "Number of vowels: #{num}"
  end

  def getBob(string)
    return string.scan(/(?=#{"bob"})/).count
  end

  def rev(string)
    # return string.reverse
    storage = []
    string.split('').each do |e|
       storage.unshift(e)
    end
    return storage
  end


  def countCaps(str)
    capital_count = str.scan(/[A-Z]/).length
    lower_count = str.scan(/[a-z]/).length
    return "UPPERCASE: #{capital_count}, LOWERCASE: #{lower_count}"
  end

  p countCaps('Hello World')


  def alph(words)
    p words.split(", ").sort
  end

  def comma_separated(input)
    spl = input.split(' ')
    counter = 0
    spl.map {|e| e.length > counter ? counter=e.length : counter=counter  }
    return counter
  end
  p comma_separated("The people be very fatssss")