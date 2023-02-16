--------------------------------------------------------
--  DDL for Table 장바구니
--------------------------------------------------------

  CREATE TABLE "장바구니" 
   (	"바구니번호" NUMBER(*,0), 
	"생성일자" DATE, 
	"회원번호" VARCHAR2(10 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Index 장바구니_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "장바구니_PK" ON "장바구니" ("바구니번호") 
  ;
--------------------------------------------------------
--  Constraints for Table 장바구니
--------------------------------------------------------

  ALTER TABLE "장바구니" MODIFY ("바구니번호" NOT NULL ENABLE);
 
  ALTER TABLE "장바구니" MODIFY ("생성일자" NOT NULL ENABLE);
 
  ALTER TABLE "장바구니" MODIFY ("회원번호" NOT NULL ENABLE);
 
  ALTER TABLE "장바구니" ADD CONSTRAINT "장바구니_PK" PRIMARY KEY ("바구니번호") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table 장바구니
--------------------------------------------------------

  ALTER TABLE "장바구니" ADD CONSTRAINT "장바구니_회원_FK" FOREIGN KEY ("회원번호")
	  REFERENCES "회원" ("회원번호") ENABLE;
