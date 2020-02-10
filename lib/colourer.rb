class Colourer

  def self.colour_cell(array,n1,n2,colour)
    array[n2.to_i-1][n1.to_i-1] = colour
    array
  end

  def self.colour_column(array,col,n1,n2,colour)
    array[n1.to_i-1..n2.to_i-1].each do |array|
      array[col.to_i-1] = colour
    end
    array
  end

end
