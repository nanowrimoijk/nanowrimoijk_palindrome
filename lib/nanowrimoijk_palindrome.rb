require "nanowrimoijk_palindrome/version"

module NanoPalindrome

  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private

  def processed_content
    to_s.scan(/[a-z|\d]/i).join.downcase
  end

end

class String
  include NanoPalindrome
end

class Integer
  include NanoPalindrome
end
