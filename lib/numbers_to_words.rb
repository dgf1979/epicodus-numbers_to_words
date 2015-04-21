class String
  def numbers_to_words
    word_result = ""
    numbers = self.split("")

    single_digit = {
      "1" => "one"
    }

    numbers.each do |number|
      word_result = single_digit.fetch(number)
    end

    word_result

  end
end
