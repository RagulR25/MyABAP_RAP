CLASS ztest_class1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ztest_class1 IMPLEMENTATION.








  METHOD if_oo_adt_classrun~main.

data db_tab type TABLE of ztest_booking_d.

select * from /dmo/booking into TABLE  @DATA(i_tab).

db_tab = CORRESPONDING #( i_tab ).


INSERT ztest_booking_d FROM TABLE @db_tab.
if sy-subrc is INITIAL .
COMMIT WORK.
out->write( 'success' ).

ENDIF.




  ENDMETHOD.

ENDCLASS.
