def filter_list(l)
  l.delete_if { |i| !i.is_a? Integer }
end