## Scanning
This tip is for manually scan a heap of documents and then making one PDF with them:

1. ```scanimage --mode Gray -p --format=tiff --resolution 150 -x 210 -y 297 > 3.tiff```
2. ```tiffcp {1..88}.tiff salida.tiff```
3. ```tiff2pdf -q 100 -j -o final.pdf -p A4 salida.tiff```

#image-scanning