class Phrase
	def initialize(sentence)
		@sentence = sentence
	end

	def word_count
		@sentence.split(" ").inject(Hash.new(0)) do |word_count_hash, word|
			word_count_hash[word] += 1
			word_count_hash
		end
	end
end