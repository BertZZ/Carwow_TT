class BitmapEditor

  attr_accessor :array

  def initialize
    @array = []
  end

  def run(file)
    return puts "please provide correct file" if file.nil? || !File.exists?(file)

    File.open(file).each do |line|
      line = line.chomp.split
      case line[0]
      when 'I'
        @array = Array.new(line[2].to_i) { Array.new(line[1].to_i, 'O') }
      when 'S'
          puts "There is no image"
      else
          puts 'unrecognised command :('
      end
    end
  end
end
