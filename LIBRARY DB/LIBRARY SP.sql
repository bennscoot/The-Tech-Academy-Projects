USE [LIBRARY 2]

/* ONE */
SELECT bookcopies_#ofcopies, Library_branchname FROM tbl_bookcopies
JOIN tbl_Library ON Library_branchID = bookcopies_branchID
WHERE bookcopies_bookID = '1001' AND Library_branchname = 'Sharpstown';


 /* TWO */
 SELECT SUM (bookcopies_#ofcopies) 
 FROM tbl_bookcopies 
 WHERE bookcopies_bookID = '1001';

 /* THREE*/
 SELECT borrower_name FROM tbl_borrower
 JOIN tbl_bookloans ON bookloans_cardNo = borrower_cardNo
 WHERE bookloans_branchID = NULL;






 /* FOUR*/
 SELECT book_title, borrower_name, borrower_address FROM tbl_borrower
 JOIN tbl_bookloans ON bookloans_cardNo = borrower_cardNo 
 JOIN tbl_book ON book_bookID = bookloans_bookID 
 JOIN tbl_Library ON Library_branchID = bookloans_branchID
 WHERE Library_branchname = 'Sharpstown' AND bookloans_dueDate = '6/29/17';

 /* FIVE*/
 SELECT COUNT(bookloans_branchID) AS Total_#_of_Books, Library_branchname
 FROM tbl_bookloans
 JOIN tbl_Library
 ON Library_branchID = bookloans_branchID
 GROUP BY Library_branchname
 ;


 /* SIX */
 SELECT COUNT(bookloans_cardNO) AS Total_Number_of_Books, borrower_name, borrower_address
 FROM tbl_bookloans
 JOIN tbl_borrower 
 ON borrower_cardNo = bookloans_cardNo 
 GROUP BY borrower_name, borrower_address
 HAVING COUNT(bookloans_cardNo) > 5
 ORDER BY COUNT(borrower_cardNo) DESC
 ;



 /* SEVEN */

 SELECT book_title, bookcopies_#ofcopies
 FROM tbl_book
 JOIN tbl_bookcopies 
 ON bookcopies_bookID = book_bookID
 JOIN tbl_Library 
 ON Library_branchID = bookcopies_branchID 
 JOIN tbl_bookauthor
 ON bookauthor_bookID = book_bookID
 WHERE bookauthor_authorname = 'Stephen King' AND Library_branchname = 'Central'
 ;