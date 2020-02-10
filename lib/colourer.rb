class Colourer
  def self.colour_cell(array,n1,n2,col)
    array[n2.to_i-1][n1.to_i-1] = col
    array
  end
end
