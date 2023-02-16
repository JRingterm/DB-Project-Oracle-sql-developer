--------------------------------------------------------
--  DDL for Table 도서
--------------------------------------------------------

  CREATE TABLE "도서" 
   (	"도서번호" VARCHAR2(10 BYTE), 
	"도서명" VARCHAR2(30 BYTE), 
	"재고량" NUMBER(*,0), 
	"판매가" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Index 도서_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "도서_PK" ON "도서" ("도서번호") 
  ;
--------------------------------------------------------
--  Constraints for Table 도서
--------------------------------------------------------

  ALTER TABLE "도서" MODIFY ("도서번호" NOT NULL ENABLE);
 
  ALTER TABLE "도서" MODIFY ("도서명" NOT NULL ENABLE);
 
  ALTER TABLE "도서" MODIFY ("재고량" NOT NULL ENABLE);
 
  ALTER TABLE "도서" MODIFY ("판매가" NOT NULL ENABLE);
 
  ALTER TABLE "도서" ADD CONSTRAINT "도서_PK" PRIMARY KEY ("도서번호") ENABLE;
