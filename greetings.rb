class Greetings
  attr_reader :wink, :double_wink, :close_eyes, :jump

  def initialize
    @wink = "Wink"
    @double_wink = "Double wink"
    @close_eyes = "Close to eyes"
    @jump = "jump"
  end

  def identify_greeting(number_binary)
    @binary, box, revert = [], "", ""
    number_binary.each do |bin|
      box = bin
      if bin == "10000"
        revert = bin
        @binary.clear
      end
      if revert == "10000"
        bin = ""
        @box_binary = box.chars # Cadena => arreglo
        @box_binary.reverse.each do |text|
          bin = bin + text
          break if text == "1"
        end
        @binary << bin.reverse
      else
        @binary << bin
      end
    end
    assigment(@binary, revert)
  end

  def assigment(binary, revert)
    @greetings = []
    @greetings = revert == "10000" ? greetings_assig_reverse(binary) : greetings_assigment(binary)
    @greetings.each { |result| print "#{result} " }
  end

  def greetings_assigment(binary)
    binary.uniq.each do |bin|
      @greetings << @wink if bin.to_i == 1
      @greetings << @double_wink if bin.to_i == 10
      @greetings << @close_eyes if bin.to_i == 100
      @greetings << @jump if bin.to_i == 1000
    end
    @greetings
  end

  def greetings_assig_reverse(binary)
    binary.uniq.reverse.each do |bin|
      @greetings << @wink if bin.to_i == 1
      @greetings << @double_wink if bin.to_i == 10
      @greetings << @close_eyes if bin.to_i == 100
      @greetings << @jump if bin.to_i == 1000
    end
    @greetings
  end
end