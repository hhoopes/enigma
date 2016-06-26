class KeyGenerator
  attr_reader :key_hash, :key

  def initialize
    @key = generate_key
    @key_hash = populate_hash
  end

  private
    def generate_key
      Random.rand(10000..99999)
    end

    def populate_hash
      key_string = key.to_s
      ["A","B","C","D"].each_with_index do | key, i |
        key_hash[key] = key_string[i..i + 1]
        binding.pry
      end
    end
end
