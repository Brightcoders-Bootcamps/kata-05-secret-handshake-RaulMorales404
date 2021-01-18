class Binary
  def convert_binary(decimal)
    metod = Greetings.new
    @number_binary = []
    decimal += 1
    decimal.times { |cont| @number_binary << cont.to_s(2) }
    metod.identify_greeting(@number_binary)
  end
end