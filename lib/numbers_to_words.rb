class String
  def numbers_to_words




    word_result = ""

    single_digit = {
      "1" => "one",
      "2"=> "two",
      "3" => "three",
      "4" => "four",
      "5" => "five",
      "6" => "six",
      "7" => "seven",
      "8" => "eight",
      "9" => "nine",
    }

    double_digit = {
      "2" => "twenty",
      "3" => "thirty",
      "4" => "fourty",
      "5" => "fifty",
      "6" => "sixty",
      "7" => "seventy",
      "8" => "eighty",
      "9" => "ninety",
    }

    teen_digit = {
      "10" => "ten",
      "11" => "eleven",
      "12"=> "twelve",
      "13" => "thirteen",
      "14" => "fourteen",
      "15" => "fifteen",
      "16" => "sixteen",
      "17" => "seventeen",
      "18" => "eightteen",
      "19" => "nineteen",
    }

      if self.length == 1
        word_result = single_digit.fetch(self)
      elsif self.length == 2

        if self[0] == "1"
          word_result = teen_digit.fetch(self)
          
        else
          two_items = self.split("")
          word_result = double_digit.fetch(two_items[0]) + "-" +              single_digit.fetch(two_items[1])
        end
      elsif self.length == 3
        three_items = self.split("")
        word_result = single_digit.fetch(three_items[0]) + "-hundred-" + double_digit.fetch(three_items[1]) + "-" +              single_digit.fetch(three_items[2])
      end

    word_result

  end

  def format_number
    formatted_number = self.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse.split(",")

#    formatted_number = self.split(",")

    if formatted_number[-2]
      formatted_number[-2].numbers_to_words + " thousand " +     formatted_number[-1].numbers_to_words

    else
      formatted_number[-1]
      formatted_number[-1].numbers_to_words
    end

  end



end
