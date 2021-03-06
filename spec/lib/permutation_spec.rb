require 'spec_helper'

describe "permutation" do
	context "word with one char" do
		it "reports that the only anagram of A is A" do
			Permutation.find("A").should eql ['A']
		end

	end

	context "words bigger than one char" do
		it "reports all the anagrams of 'AB'" do 
			Permutation.find("AB").should eql ["AB", "BA"]
		end
	end

	context "words bigger than one char" do
		it "reports all the anagrams of 'AC'" do 
			Permutation.find("AC").should eql ["AC", "CA"]
		end
	end

	

=begin
	context "two word dictionary" do
		context "both words are anagrams of each other" do
			it "should report two anagrams for each word in the dictionary" do
				dictionary = ["AB","BA"]
				find_all_anagrams(dictionary).should include("AB" => ["AB", "BA"], "BA" => ["BA", "AB"])
			end
		end
	end
=end

end

