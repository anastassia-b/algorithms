class String
  def symmetric_substrings
    symm_subs = []

    length.times do |start_pos|
      ((start_pos + 1)...length).each do |end_pos|
        substring = self[start_pos..end_pos]
        symm_subs << substring if substring == substring.reverse
      end
    end

    symm_subs
  end
end
