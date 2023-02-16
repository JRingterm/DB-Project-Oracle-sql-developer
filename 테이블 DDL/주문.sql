--------------------------------------------------------
--  DDL for Table 주문
--------------------------------------------------------

  CREATE TABLE "주문" 
   (	"주문번호" VARCHAR2(20 BYTE), 
	"주문일자" DATE, 
	"주문총액" NUMBER(*,0), 
	"주문상태" VARCHAR2(10 BYTE), 
	"신용카드_카드번호" VARCHAR2(20 BYTE), 
	"신용카드_유효기간" VARCHAR2(20 BYTE), 
	"신용카드_카드종류" VARCHAR2(10 BYTE), 
	"배송지_우편번호" VARCHAR2(10 BYTE), 
	"배송지_기본주소" VARCHAR2(100 BYTE), 
	"배송지_상세주소" VARCHAR2(100 BYTE), 
	"회원번호" VARCHAR2(10 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Index 주문_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "주문_PK" ON "주문" ("주문번호") 
  ;
--------------------------------------------------------
--  Constraints for Table 주문
--------------------------------------------------------

  ALTER TABLE "주문" MODIFY ("주문번호" NOT NULL ENABLE);
 
  ALTER TABLE "주문" MODIFY ("주문일자" NOT NULL ENABLE);
 
  ALTER TABLE "주문" MODIFY ("주문총액" NOT NULL ENABLE);
 
  ALTER TABLE "주문" MODIFY ("주문상태" NOT NULL ENABLE);
 
  ALTER TABLE "주문" MODIFY ("신용카드_카드번호" NOT NULL ENABLE);
 
  ALTER TABLE "주문" MODIFY ("신용카드_유효기간" NOT NULL ENABLE);
 
  ALTER TABLE "주문" MODIFY ("신용카드_카드종류" NOT NULL ENABLE);
 
  ALTER TABLE "주문" MODIFY ("배송지_우편번호" NOT NULL ENABLE);
 
  ALTER TABLE "주문" MODIFY ("배송지_기본주소" NOT NULL ENABLE);
 
  ALTER TABLE "주문" MODIFY ("배송지_상세주소" NOT NULL ENABLE);
 
  ALTER TABLE "주문" MODIFY ("회원번호" NOT NULL ENABLE);
 
  ALTER TABLE "주문" ADD CONSTRAINT "주문_PK" PRIMARY KEY ("주문번호") ENABLE;
 
  ALTER TABLE "주문" ADD CONSTRAINT "주문_상태CK" CHECK (주문상태 IN ('신청','발송','판매완료')) ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table 주문
--------------------------------------------------------

  ALTER TABLE "주문" ADD CONSTRAINT "주문_회원_FK" FOREIGN KEY ("회원번호")
	  REFERENCES "회원" ("회원번호") ENABLE;
