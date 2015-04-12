def main_diagonal_product(mat)
  result = 1
  mat.each_with_index do |sub_mat, index|
    result *= (index < sub_mat.size) ? sub_mat[index] : 1
  end
  result
end