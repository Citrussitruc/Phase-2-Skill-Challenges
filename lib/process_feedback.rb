def check_todo(str)
  str.upcase!
  (str.include? "#TODO") || (str.include? "# TODO")
end