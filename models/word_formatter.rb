class WordFormatter

  def initialize(input)
    @input = input
  end

  # def postcode_upper_case
  #   @input.each { |key, value| @input[:phone] = value.upcase! }
  # end

  def postcode_upper_case
    @input.each { |key, value| @input = value.upcase! }
  end

  def camel_case
    capitalised_words =  @input.split("_").each {|word| word.capitalize!}
    capitalised_words.join
  end

end