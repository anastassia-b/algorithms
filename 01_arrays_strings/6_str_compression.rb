#Implement a method to perform basic string compression using the
#counts of repeated characters. If compressed is not smaller than original,
# return the original. Has only uppercase and lowercase letters.
require 'rspec'

#Easy implementation first, compress the string then compare the lengths.
#Order matters, so I can't just throw into a hash, must do in order.
def compress(str)
  compressed_str = ""

  #could have started at 1.
  count = 0
  str.chars.each_with_index do |ch, i|
    if str[i+1] == ch
      count += 1
    else
      count += 1
      compressed_str << ch
      compressed_str << count.to_s
      count = 0
    end
    #good idea to do early return here if the length exceeds.
  end

  (compressed_str.length < str.length) ? compressed_str : str
end

#Be careful that I'm not repeatedly concatenating strings together; inefficient.
#Count store.. in a double array.. and then join it all.

p compress("aabcccccaaa") == "a2b1c5a3"
p compress("aaaaaaa") == "a7"
p compress("ababa") == "ababa" #NOT "a1b1a1b1a1"

#RSpec tests!

describe 'String Compression' do
  let(:string1) { "aabcccccaaa" }
  let(:string2) { "aaaaaaa" }
  let(:string3) { "ababa" }

  context 'compressable string' do
    it 'returns a compressed string' do
      expect(compress(string1)).to eq("a2b1c5a3")
      expect(compress(string2)).to eq("a7")
    end
  end

  context 'incompressible string' do
    it 'returns the original string' do
      expect(compress(string3)).to eq(string3)
    end
  end
end
