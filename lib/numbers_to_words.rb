class String
  def numbers_to_words
    word_result = ""

    single_digit = {
      "1" => "one"
    }

    double_digit = {
      "2" => "twenty"
    }


      if self.length == 1
        word_result = single_digit.fetch(self)
      else self.length == 2
        two_items = self.split("")
        word_result = double_digit.fetch(two_items[0]) + "-" + single_digit.fetch(two_items[1])
      end


    word_result

  end
end
