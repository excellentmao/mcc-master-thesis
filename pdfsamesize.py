import os
from PyPDF2 import PdfFileReader, PdfFileWriter

path_old=".\\pics"
path_new=".\\picsdc"

for dirname,dirs,filenames in os.walk(path_old):
    for file in filenames:
        abspath_old=os.path.join(dirname,file)
        output = PdfFileWriter()
        pdfOne = PdfFileReader(open(abspath_old, "rb"))
        
        width = pdfOne.getPage(0).mediaBox.getWidth()
        height = pdfOne.getPage(0).mediaBox.getHeight()

        output.addBlankPage(width,height)

        abspath_new=os.path.join(path_new,file)
        outputStream = open(abspath_new, "wb")
        output.write(outputStream)
        outputStream.close()
        
        # print(width)
        # print(dirname)
        # print(abspath)



