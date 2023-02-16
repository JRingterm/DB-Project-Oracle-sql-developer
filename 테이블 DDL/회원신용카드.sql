--------------------------------------------------------
--  DDL for Table 회원신용카드
--------------------------------------------------------

  CREATE TABLE "회원신용카드" 
   (	"회원번호" VARCHAR2(10 BYTE), 
	"카드번호" VARCHAR2(20 BYTE), 
	"유효기간" VARCHAR2(10 BYTE), 
	"카드종류" VARCHAR2(10 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Index 회원신용카드_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "회원신용카드_PK" ON "회원신용카드" ("회원번호", "카드번호") 
  ;
--------------------------------------------------------
--  Constraints for Table 회원신용카드
--------------------------------------------------------

  ALTER TABLE "회원신용카드" MODIFY ("회원번호" NOT NULL ENABLE);
 
  ALTER TABLE "회원신용카드" MODIFY ("카드번호" NOT NULL ENABLE);
 
  ALTER TABLE "회원신용카드" MODIFY ("유효기간" NOT NULL ENABLE);
 
  ALTER TABLE "회원신용카드" MODIFY ("카드종류" NOT NULL ENABLE);
 
  ALTER TABLE "회원신용카드" ADD CONSTRAINT "회원신용카드_PK" PRIMARY KEY ("회원번호", "카드번호") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table 회원신용카드
--------------------------------------------------------

  ALTER TABLE "회원신용카드" ADD CONSTRAINT "회원신용카드_회원_FK" FOREIGN KEY ("회원번호")
	  REFERENCES "회원" ("회원번호") ENABLE;
