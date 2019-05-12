# wls-jdbc-xml-xsl-Bootstrap
Bootstrap your WebLogic Server JDBC Data Source XML




Check http://leonardsoa.blogspot.com/2019/05/bootstrap-your-jdbc-data-source-xml.html  for the full details.

Steps: 
1. Merge all the jdbc xml files into 1 single big file.
2. Remove the xml headers from the entire file.
3. Add the xml header row as 1 row only and define the new root element (jdbc_list):
   
        <?xml version='1.0' encoding='UTF-8'?>
        <jdbc_list>
        ...
        </jdbc_list>
        

4. Run the script by using the below:

    java -jar saxon9he.jar -s:all_jdbc.xml -xsl:jdbc_list.xsl -o:all_jdbc.html


        all_jdbc.xml is the source (-s) xml file that covers all the data sources.
        jdbc_list.xsl is the XSLT template used (-xsl).
        all_jdbc.html  is the HTML output (-o) that will be generated.
        Note: Of course, you can rename your files; but use the same pattern.


