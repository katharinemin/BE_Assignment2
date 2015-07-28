=begin	
Create a program to analyze a large block of text and report back on the frequency of each word in the text.

Start by sorting the text into a hash where each word is a key with the word's value being the amount of times it has been used in the block:
    {the: 10, john: 1, of: 15}
Once you've created this hash, return the word that has been used the most 
=end

def input(text)
	sorted_array=text.split.sort
	frequencies=Hash.new

	sorted_array.each do |text|
		if frequencies.has_key?(text)
			frequencies[text] += 1
		else
			frequencies[text] = 1
		end
	end
	puts frequencies

	highest_count = Hash[frequencies.sort_by{ |k,v| v }.reverse].first[0]
	puts highest_count
	
end

text="Coding is fun. Kathy Kathy Kathy"
input(text)
