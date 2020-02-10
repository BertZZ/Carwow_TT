class Cleaner

  def self.clear_map(array)
    array.each do |array|
      array.fill('O')
    end
    array
  end

end
