class Enigma
  def initialize
    @key = KeyGenerator.generate
    @offset_calculator = OffsetCalculator.new(Today.now, @key)
  end
  
  def encrypt

  end

  def decrypt

  end


end
