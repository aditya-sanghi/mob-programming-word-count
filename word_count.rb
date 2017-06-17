class Phrase
	def initialize(sentence)
		@sentence = sentence
	end

	def word_count
		words.inject(Hash.new(0)) do |word_count_hash, word|
      word.delete!("'") if word.scan(/'/).count == 2
     	word_count_hash[word] += 1
			word_count_hash
		end
	end

	private

	def words
		word = @sentence
      .downcase
      .gsub(/[\!\&\@\$\%\^\:\,\.]/, ' ')
      .split(/\s+/)
      
	end
end