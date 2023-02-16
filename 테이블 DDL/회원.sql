--------------------------------------------------------
--  DDL for Table 회원
--------------------------------------------------------

  CREATE TABLE "회원" 
   (	"회원번호" VARCHAR2(10 BYTE), 
	"비밀번호" VARCHAR2(30 BYTE), 
	"성명" VARCHAR2(30 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Index 회원_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "회원_PK" ON "회원" ("회원번호") 
  ;
--------------------------------------------------------
--  Constraints for Table 회원
--------------------------------------------------------

  ALTER TABLE "회원" MODIFY ("회원번호" NOT NULL ENABLE);
 
  ALTER TABLE "회원" MODIFY ("비밀번호" NOT NULL ENABLE);
 
  ALTER TABLE "회원" MODIFY ("성명" NOT NULL ENABLE);
 
  ALTER TABLE "회원" ADD CONSTRAINT "회원_PK" PRIMARY KEY ("회원번호") ENABLE;
