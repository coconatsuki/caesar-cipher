class Caesar

  def initialize
    @sentence = ""
    @shift = 0
    puts "What's your secret message ?"
    questions
  end

  private

  def questions
    @sentence = gets.chomp
    puts "\nWhat's your shift ? Give me a positive number."
    @shift = gets.chomp.to_i
    checking(@shift)
  end

  def display (sentence, shift)
    @sentence_to_code = sentence.chars
    shift.times do
      ciphering(@sentence_to_code)
      end
    puts "\nThis is your ciphered message : '#{@sentence_to_code.join}'"
    puts "_______________________________________"
    puts "\nDo you have an other secret message ?\n\n"
    questions
  end

  def checking(num)
    if num < 1 then
      puts "\nYou made a mistake. Please give me a positive number."
      @shift = gets.chomp.to_i
      checking(@shift)
    else
      display(@sentence, @shift)
    end
  end

  def ciphering(test)
    test.map! do |c|
      case c
      when "z" then c = "a"
      when "Z" then c = "A"
      when /[a-yA-Y0-9]/ then c.next
      else c
      end
    end
  end

end

caesar = Caesar.new

caesar
