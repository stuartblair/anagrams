class Permutation

	def self.find(word)
	 	if(word.size == 1)
			return [word]
		end
		
		word.chars.each_with_index {|lit, index|
 
			others = self.find(word[0, index] + word[index+1, word.size])
			permutations = []
			others.each { |perm| permutations.add(word[index] + perm) }
		}
	end
end