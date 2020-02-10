class Printer

  def self.print_map(array)
    array.each do |array|
      print array.join
      puts "\n"
    end
  end
end
