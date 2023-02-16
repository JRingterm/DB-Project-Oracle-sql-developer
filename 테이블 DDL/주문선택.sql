--------------------------------------------------------
--  DDL for Table 주문선택
--------------------------------------------------------

  CREATE TABLE "주문선택" 
   (	"주문번호" VARCHAR2(20 BYTE), 
	"도서번호" VARCHAR2(10 BYTE), 
	"수량" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Index 주문선택_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "주문선택_PK" ON "주문선택" ("주문번호", "도서번호") 
  ;
--------------------------------------------------------
--  Constraints for Table 주문선택
--------------------------------------------------------

  ALTER TABLE "주문선택" MODIFY ("주문번호" NOT NULL ENABLE);
 
  ALTER TABLE "주문선택" MODIFY ("도서번호" NOT NULL ENABLE);
 
  ALTER TABLE "주문선택" MODIFY ("수량" NOT NULL ENABLE);
 
  ALTER TABLE "주문선택" ADD CONSTRAINT "주문선택_CK" CHECK (수량 >= 1) ENABLE;
 
  ALTER TABLE "주문선택" ADD CONSTRAINT "주문선택_PK" PRIMARY KEY ("주문번호", "도서번호") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table 주문선택
--------------------------------------------------------

  ALTER TABLE "주문선택" ADD CONSTRAINT "주문선택_도서_FK" FOREIGN KEY ("도서번호")
	  REFERENCES "도서" ("도서번호") ENABLE;
 
  ALTER TABLE "주문선택" ADD CONSTRAINT "주문선택_주문_FK" FOREIGN KEY ("주문번호")
	  REFERENCES "주문" ("주문번호") ENABLE;
