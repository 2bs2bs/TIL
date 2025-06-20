def check_nth_char(str, target_char, n, check_char)
  index = str.index(target_char)
  if index && index + n < str.length
    return str[index + n] == check_char
  else
    return false
  end
end

def change_char(str, before, after)
  str.gsub(before, after)
end

def new_str(str, delete_char, n, check_char)
  deleted_char_str = str.delete(delete_char)
  
  check_nth_char(delete_char, target_char, n, check_char)

  change_char(str, before, after)
end
