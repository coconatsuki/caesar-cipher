class Caesar

  def initialize
    @sentence = ""
    @shift = 0
    puts "What's your secret message ?"
    @sentence = gets.chomp
    puts "What's your shift ? Give me a positive number".
    @shift = gets.chomp
    launch(@sentence, @shift)
  end

  def launch (sentence, shift)
    @sentence_to_code = sentence.chars
    shift.times do
      ciphering(@sentence_to_code)
      end
    print @sentence_to_code.join
  end

  private

  def ciphering(test)
    test.map! do |c|
      case c
      when "z" then c = "a"
      when "Z" then c = "A"
      when /[a-y]/ then c.next
      else c
      end
    end
  end

end

caesar = Caesar.new

caesar.launch
