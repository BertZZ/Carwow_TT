require './lib/bitmap_editor'

describe BitmapEditor do
  subject = described_class.new

  it 'is initialized with an empty array' do
    subject = BitmapEditor.new
    expect(subject.array).to be_a_kind_of(Array)
    expect(subject.array).to be_empty
  end

  describe '#run' do
    it 'creates an array of 6 rows and 5 columns when given an input I56' do
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

    it 'Does not allow Bitmaps of 0 columns to be created' do
      expect{ subject.run('spec/files/0_columns.txt') }.to output("Please provide a non zero number of Rows or Columns\n").to_stdout
    end

    it 'Does not allow Bitmaps of 0 Rows to be created' do
      expect{ subject.run('spec/files/0_rows.txt') }.to output("Please provide a non zero number of Rows or Columns\n").to_stdout
    end

    it 'Does not allow a cell with invalid X coordinate to be selected' do
      expect{ subject.run('spec/files/invalid_X.txt') }.to raise_error("This X coordinate does not exist")
    end

    it 'Does not allow a cell with invalid Y coordinate to be selected' do
      expect{ subject.run('spec/files/invalid_Y.txt') }.to raise_error("This Y coordinate does not exist")
    end

    it 'Does not allow row greater than the number of rows to be coloured' do
      expect{ subject.run('spec/files/row_out_of_range.txt') }.to raise_error("This row does not exist. Please check your inputs")
    end

    it 'Does not allow column greater than the number of columns to be colured' do
        expect{ subject.run('spec/files/column_out_of_range.txt') }.to raise_error("This column does not exist. Please check your inputs")
    end

    it 'Does not allow columns to be coloured between non existant rows' do
        expect{ subject.run('spec/files/vertical_row_out_of_range.txt') }.to raise_error("This row does not exist. Please check your inputs")
    end

    it 'Does not allow rows to be coloured between non existant columns' do
        expect{ subject.run('spec/files/horizontal_column_out_of_range.txt') }.to raise_error("This column does not exist. Please check your inputs")
    end
  end
end
