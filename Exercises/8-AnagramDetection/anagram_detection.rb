def is_anagram(test, original)
  test.delete('^A-Za-z').downcase.split(//).sort == original.delete('^A-Za-z').downcase.split(//).sort
end