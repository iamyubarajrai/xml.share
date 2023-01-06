(:~ 
    Filename: book.xqy
    To execute this file in terminal you have to type the following code:
    
    java -jar .\BaseX.jar .\book.xqy > ..\output\report.xml


    XQuery test with Java
    https://www.java.com/download/ie_manual.jsp
    https://basex.org/download/

    IDE: https://www.altova.com/xmlspy-xml-editor/download
 ~:)

(:~ Goes to bookstore.xml where book element is returned which is inside the bookstore document ~:)
 for $x in doc("..\bookstore.xml")/bookstore/book
 return $x

 (:~ 
 for $x in doc("..\bookstore.xml")/bookstore/book[price<35]
 return $x
 ~:)

 (:~ 
 Study note: https://www.tutorialspoint.com/xquery/pdf/xquery_environment.pdf
 ~:)