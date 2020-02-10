# Bitmap editor- By Bertie Wooles

Tech Test for Carwow using Ruby and TDD.

## Usage
There are 6 supported commands:
- I N M - Create a new M x N image with all pixels coloured white (O).
- C - Clears the table, setting all pixels to white (O).
- L X Y C - Colours the pixel (X,Y) with colour C.
- V X Y1 Y2 C - Draw a vertical segment of colour C in column X between rows Y1 and Y2 (inclusive).
- H X1 X2 Y C - Draw a horizontal segment of colour C in row Y between columns X1 and X2 (inclusive).
- S - Show the contents of the current image

## Tips
- Please make sure the first Line of your file is a I command so you have a bitmap created
- Don't try to colour cells outside the range of the bitmap you created

# Running

`>bin/bitmap_editor PATH_TO_YOUR_FILE`


# Screenshots
Running the bitmap command script from the provided Task Document:
![Screenshot from 2020-02-10 16-43-41](https://user-images.githubusercontent.com/26028408/74175528-ece6a800-4c2d-11ea-956f-7720cdb438c2.png)
All tests passing:
![Screenshot from 2020-02-10 17-44-39](https://user-images.githubusercontent.com/26028408/74175859-87df8200-4c2e-11ea-9f9d-25dcb9667952.png)
