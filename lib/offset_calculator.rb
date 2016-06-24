class OffsetCalculator
  attr_reader :offset_hash, :date

  def initialize(key, date = Date.today)
    date = date.strftime("%d%m%y")
    @offset_hash = {}
    generate_offset(date)
  end

  def generate_offset(date)
    num = date.to_i ^ 2
    ["A","B","C","D"].zip(num.to_s.slice(-4..-1).chars.map(&:to_i)).map do |offset,value|
      @offset_hash[offset] = value
    end
  end
end
