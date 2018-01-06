require './caesar'

describe Caesar do
  subject do
    Caesar.new(method)
  end

  context "caesar_next" do
    let(:method) { Cipher_next.new }

    it "shifts a letter by one" do
      expect(subject.cipher("a", 1)).to eql("b")
    end

    it "shifts a word by one" do
      expect(subject.cipher("amandine", 1)).to eql("bnboejof")
    end

    it "shifts a z by one" do
      expect(subject.cipher("z", 1)).to eql("a")
    end

    it "shifts numbers" do
      expect(subject.cipher("0123456789", 1)).to eql("1234567890")
    end

    it "keeps everything else" do
      expect(subject.cipher("Hello ! My name is Amandine.", 1)).to eql("Ifmmp ! Nz obnf jt Bnboejof.")
    end

    it "shifts by more than once" do
      expect(subject.cipher("Hello ! My name is Amandine.", 4)).to eql("Lipps ! Qc reqi mw Eqerhmri.")
    end

    it "preserves case" do
      expect(subject.cipher("AbCdEfGzZ", 1)).to eql( "BcDeFgHaA")
    end

    it "returns the same sentence for a 0 shift" do
      expect(subject.cipher("Hello ! My name is Amandine.", 0)).to eql("Hello ! My name is Amandine.")
    end
  end

  context "caesar_tr" do
    let(:method) { Cipher_tr.new }


        it "shifts a letter by one" do
          expect(subject.cipher("a", 1)).to eql("b")
        end

        it "shifts a word by one" do
          expect(subject.cipher("amandine", 1)).to eql("bnboejof")
        end

        it "shifts a z by one" do
          expect(subject.cipher("z", 1)).to eql("a")
        end

        it "shifts numbers" do
          expect(subject.cipher("0123456789", 1)).to eql("1234567890")
        end

        it "keeps everything else" do
          expect(subject.cipher("Hello ! My name is Amandine.", 1)).to eql("Ifmmp ! Nz obnf jt Bnboejof.")
        end

        it "shifts by more than once" do
          expect(subject.cipher("Hello ! My name is Amandine.", 4)).to eql("Lipps ! Qc reqi mw Eqerhmri.")
        end

        it "preserves case" do
          expect(subject.cipher("AbCdEfGzZ", 1)).to eql( "BcDeFgHaA")
        end

        it "returns the same sentence for a 0 shift" do
          expect(subject.cipher("Hello ! My name is Amandine.", 0)).to eql("Hello ! My name is Amandine.")
        end
  end
end
