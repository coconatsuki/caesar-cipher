require_relative './cipher_next'
require_relative './cipher_tr'


class Caesar

  def initialize(method)
    @sentence = ""
    @shift = 0
    @method = method
  end

  def launch
    puts "What\'s your secret message ?"
    launch_ciphering
  end

  def cipher(sentence, shift)
    shift.times do
      sentence = @method.ciphering(sentence)
    end
    sentence
  end

  private

  def launch_ciphering
    get_variables
    checking(@shift)
    @sentence = cipher(@sentence, @shift)
    display(@sentence)
  end


  def get_variables
    @sentence = gets.chomp
    puts "\nWhat\'s your shift ? Give me a positive number."
    @shift = gets.chomp.to_i
  end

  def display (sentence)
    puts "\nThis is your ciphered message : '#{@sentence}'"
    puts "_______________________________________"
    puts "\nDo you have an other secret message ?\n\n"
    launch_ciphering
  end

  def checking(num)
    if num < 1
      puts "\nYou made a mistake. Please give me a positive number."
      @shift = gets.chomp.to_i
      checking(@shift)
    end
  end

end
