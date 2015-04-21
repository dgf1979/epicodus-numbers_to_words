class String
  def numbers_to_words




    word_result = ""

    single_digit = {
      "1" => "one",
      "2"=> "two"
    }

    double_digit = {
      "2" => "twenty"
    }

      if self.length == 1
        word_result = single_digit.fetch(self)
      elsif self.length == 2
        two_items = self.split("")
        word_result = double_digit.fetch(two_items[0]) + "-" +              single_digit.fetch(two_items[1])
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
