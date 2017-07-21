
class Cipher_next
  def ciphering(sentence)
    @sentence = sentence.chars
    @sentence.map! do |c|
      case c
      when "z" then c = "a"
      when "Z" then c = "A"
      when /[a-yA-Y0-9]/ then c.next
      else c
      end
    end
    @sentence.join
  end

end
