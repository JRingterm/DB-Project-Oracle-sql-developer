--------------------------------------------------------
--  DDL for Table 장바구니담기
--------------------------------------------------------

  CREATE TABLE "장바구니담기" 
   (	"바구니번호" NUMBER(*,0), 
	"도서번호" VARCHAR2(10 BYTE), 
	"수량" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Index 장바구니담기_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "장바구니담기_PK" ON "장바구니담기" ("바구니번호", "도서번호") 
  ;
--------------------------------------------------------
--  Constraints for Table 장바구니담기
--------------------------------------------------------

  ALTER TABLE "장바구니담기" MODIFY ("바구니번호" NOT NULL ENABLE);
 
  ALTER TABLE "장바구니담기" MODIFY ("도서번호" NOT NULL ENABLE);
 
  ALTER TABLE "장바구니담기" MODIFY ("수량" NOT NULL ENABLE);
 
  ALTER TABLE "장바구니담기" ADD CONSTRAINT "장바구니담기_PK" PRIMARY KEY ("바구니번호", "도서번호") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table 장바구니담기
--------------------------------------------------------

  ALTER TABLE "장바구니담기" ADD CONSTRAINT "장바구니담기_도서_FK" FOREIGN KEY ("도서번호")
	  REFERENCES "도서" ("도서번호") ENABLE;
 
  ALTER TABLE "장바구니담기" ADD CONSTRAINT "장바구니담기_장바구니_FK" FOREIGN KEY ("바구니번호")
	  REFERENCES "장바구니" ("바구니번호") ENABLE;
