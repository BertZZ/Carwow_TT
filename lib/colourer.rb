class Colourer

  def self.colour_cell(array,n1,n2,colour)
    check_inputs(n1,n2)
    check_column_length(array,n1)
    check_row_length(array,n2)
    array[n2.to_i-1][n1.to_i-1] = colour
    array
  end

  def self.colour_column(array,col,n1,n2,colour)
    check_column_exits(array,col)
    check_row_exists(array, n1, n2)
    check_inputs(n1,n2,col)
    array[n1.to_i-1..n2.to_i-1].each do |array|
      array[col.to_i-1] = colour
    end
    array
  end

  def self.colour_row(array,n1,n2,row,colour)
    check_row_exists(array,row)
    check_column_exits(array, n1, n2)
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
        raise "Please check your file and enter valid non 0 arguments"
      end
    end
  end

  def self.check_column_exits(array, *columns)
    columns.each do |column|
      if column.to_i > array[0].length
        raise "This column does not exist. Please check your inputs"
      end
    end
  end

  def self.check_row_exists(array, *rows)
    rows.each do |row|
      if row.to_i > array.length
        raise "This row does not exist. Please check your inputs"
      end
    end
  end

  def self.check_column_length(array, n1)
    if n1.to_i > array[0].length
      raise "This X coordinate does not exist"
    end
  end

  def self.check_row_length(array, n2)
    if n2.to_i > array.length
      raise "This Y coordinate does not exist"
    end
  end
end
