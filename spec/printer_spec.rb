require './lib/printer'

describe Printer do
  describe '#print_map' do
    it 'Prints the bitmap to the console' do
      array = [["O", "O", "O"], ["O", "O", "O"], ["O", "O", "O"], ["O", "O", "O"]]
      expect { Printer.print_map(array) }.to output("OOO\nOOO\nOOO\nOOO\n").to_stdout
    end
  end
end
