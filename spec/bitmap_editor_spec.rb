require './lib/bitmap_editor'

describe BitmapEditor do
  subject = described_class.new

  it 'is initialized with an empty array' do
    subject = BitmapEditor.new
    expect(subject.array).to be_a_kind_of(Array)
    expect(subject.array).to be_empty
  end

  describe '#run' do
    it 'creates an array of 5 rows and 6 columns when given an input I56' do
      subject.run('spec/files/create_array_test.txt')
      expect(subject.array).to eq([["O", "O", "O", "O", "O"],
                                   ["O", "O", "O", "O", "O"],
                                   ["O", "O", "O", "O", "O"],
                                   ["O", "O", "O", "O", "O"],
                                   ["O", "O", "O", "O", "O"],
                                   ["O", "O", "O", "O", "O"]])
    end

    it 'colours a specific cell when given a line starting with L' do
      subject.run('spec/files/colour_cell_test.txt')
      expect(subject.array).to eq([["O", "O", "O", "O", "O"],
                                   ["O", "O", "O", "O", "O"],
                                   ["O", "T", "O", "O", "O"],
                                   ["O", "O", "O", "O", "O"],
                                   ["O", "O", "O", "O", "O"],
                                   ["O", "O", "O", "O", "O"]])
    end

    it 'colours part of a column when given a line starting with V' do
      subject.run('spec/files/colour_column_test.txt')
      expect(subject.array).to eq([["O", "O", "O", "O", "O"],
                                   ["O", "O", "O", "T", "O"],
                                   ["O", "O", "O", "T", "O"],
                                   ["O", "O", "O", "T", "O"],
                                   ["O", "O", "O", "O", "O"],
                                   ["O", "O", "O", "O", "O"]])
    end

    it 'colours part of a row when given a line starting with H' do
      subject.run('spec/files/colour_row_test.txt')
      expect(subject.array).to eq([["O", "O", "O", "O", "O"],
                                   ["O", "O", "O", "O", "O"],
                                   ["O", "O", "O", "O", "O"],
                                   ["O", "T", "T", "T", "T"],
                                   ["O", "O", "O", "O", "O"],
                                   ["O", "O", "O", "O", "O"]])
    end

    it 'Resets the bitmap when given a line starting with C' do
      subject.run('spec/files/clear_bitmap_test.txt')
      expect(subject.array).to eq([["O", "O", "O", "O", "O"],
                                   ["O", "O", "O", "O", "O"],
                                   ["O", "O", "O", "O", "O"],
                                   ["O", "O", "O", "O", "O"],
                                   ["O", "O", "O", "O", "O"],
                                   ["O", "O", "O", "O", "O"]])
    end
  end
end
