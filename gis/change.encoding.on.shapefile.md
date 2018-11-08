# Change encoding on shape files

From https://gis.stackexchange.com/questions/3529/which-character-encoding-is-used-by-the-dbf-file-in-shapefiles#3663

The original DBF standard defines to use ISO8859-1, and only ISO8859-1. So,
when you get a Shapefile that is really standards conform, it should be
ISO8859-1. Of course, this (very old) restriction is a not really usable
nowadays.

ArcGIS and Geopublisher, AtlasStyler and Geoserver started to extend the
standard to define the encoding. For ArcGIS, e.g., just create a .cpg file
(with the same basename as the other Shapefiles) and fill it with the name of
the encoding.

e.g. create a `echo UTF-8 > myshape.cpg`. Next time you open the Shapefile in
ArcGIS, it reads the textual contents of the DBF in that charset.

**Attention:** All this only applies to the data, not the column names. You
should really only use ASCII in the column names of a DBF if you want the file
to be openable with other programs.

## Change encoding

To change the encoding of a DBF open it with OpenOffice Calc, choose `SaveAs`
click the `Filter options` in the bottom left and press save. You can then
define the encoding to convert the text contents into.
