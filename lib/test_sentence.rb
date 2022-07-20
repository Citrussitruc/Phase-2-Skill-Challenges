def test_sentence(str)

  fail "Please enter a string" if !str.instance_of?(String)
  str.strip!
  return false if str.length == 0
  return false if str[0].upcase == str[0].downcase
  return true if str[0] == str[0].upcase && (".!?".include? str[-1])

  false
end