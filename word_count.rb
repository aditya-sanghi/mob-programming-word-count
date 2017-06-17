class Phrase
	def initialize(sentence)
		@sentence = sentence
	end

	def word_count
		words.inject(Hash.new(0)) do |word_count_hash, word|
			word_count_hash[word] += 1
			word_count_hash
		end
	end

	private

	def words
		@sentence.split(%r{[,\s]+})
	end
end