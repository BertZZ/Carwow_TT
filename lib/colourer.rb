class Colourer

  def self.colour_cell(array,n1,n2,colour)
    check_inputs(n1,n2)
    check_row_length(array,n1,n2)
    check_column_length(array,n1,n2)
    array[n2.to_i-1][n1.to_i-1] = colour
    array
  end

  def self.colour_column(array,col,n1,n2,colour)
    check_inputs(n1,n2,col)
    check_column_length(array,n1,n2)
    array[n1.to_i-1..n2.to_i-1].each do |array|
      array[col.to_i-1] = colour
    end
    array
  end

  def self.colour_row(array,n1,n2,row,colour)
    check_row_length(array,n1,n2)
    check_inputs(n1,n2,row)
    array[row.to_i-1].fill(colour,(n1.to_i-1)..(n2.to_i-1))
    array
  end

  private

  def self.check_inputs(*args)
    args.each do |a|
      if a.to_i > 0
        next
      else
        puts "Please check your file and enter valid arguments"
        exit
      end
    end
  end

  def self.check_column_length(array, *args)
    args.each do |a|
      if a.to_i > array.length
        puts "This cell does not exist. Please check your inputs"
        exit
      end
    end
  end

  def self.check_row_length(array, *args)
    args.each do |a|
      if a.to_i > array[0].length
        puts "This cell does not exist. Please check your inputs"
        exit
      end
    end
  end
end
