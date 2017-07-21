class Cipher_tr
  def ciphering(sentence)
    sentence.tr('a-yzA-YZ0-89', 'b-zaB-ZA1-90')
  end
end
