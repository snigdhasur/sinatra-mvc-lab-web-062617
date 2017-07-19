class PigLatinizer

	def pig_latin_consonant_start(word)
		first_syllable = word.gsub(/[aeiouAEIOU]/,' ').split(' ')[0]
		rest_of_word = word.slice(-(word.length - first_syllable.length)..-1)
		pig_latin = rest_of_word + first_syllable + "ay"
	end 


	def piglatinize(word)
		if word.start_with?('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U')
			word + "way"
		else
			pig_latin_consonant_start(word)  
		end 
	end

	def to_pig_latin(phrase)
		all_words_array = phrase.split(" ")
		
		all_words_array.map do |word|
			piglatinize(word)
		end.join(" ") 
	end 

end 