--------------------------------------------------------
--  DDL for Table 회원주소록
--------------------------------------------------------

  CREATE TABLE "회원주소록" 
   (	"회원번호" VARCHAR2(10 BYTE), 
	"배송지" VARCHAR2(10 BYTE), 
	"우편번호" VARCHAR2(10 BYTE), 
	"기본주소" VARCHAR2(100 BYTE), 
	"상세주소" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Index 회원주소록_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "회원주소록_PK" ON "회원주소록" ("회원번호", "배송지") 
  ;
--------------------------------------------------------
--  Constraints for Table 회원주소록
--------------------------------------------------------

  ALTER TABLE "회원주소록" MODIFY ("회원번호" NOT NULL ENABLE);
 
  ALTER TABLE "회원주소록" MODIFY ("배송지" NOT NULL ENABLE);
 
  ALTER TABLE "회원주소록" MODIFY ("우편번호" NOT NULL ENABLE);
 
  ALTER TABLE "회원주소록" MODIFY ("기본주소" NOT NULL ENABLE);
 
  ALTER TABLE "회원주소록" MODIFY ("상세주소" NOT NULL ENABLE);
 
  ALTER TABLE "회원주소록" ADD CONSTRAINT "회원주소록_CK" CHECK (배송지 IN ('집','직장')) ENABLE;
 
  ALTER TABLE "회원주소록" ADD CONSTRAINT "회원주소록_PK" PRIMARY KEY ("회원번호", "배송지") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table 회원주소록
--------------------------------------------------------

  ALTER TABLE "회원주소록" ADD CONSTRAINT "회원주소록_회원_FK" FOREIGN KEY ("회원번호")
	  REFERENCES "회원" ("회원번호") ENABLE;
