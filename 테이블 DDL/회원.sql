--------------------------------------------------------
--  DDL for Table ȸ��
--------------------------------------------------------

  CREATE TABLE "ȸ��" 
   (	"ȸ����ȣ" VARCHAR2(10 BYTE), 
	"��й�ȣ" VARCHAR2(30 BYTE), 
	"����" VARCHAR2(30 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Index ȸ��_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ȸ��_PK" ON "ȸ��" ("ȸ����ȣ") 
  ;
--------------------------------------------------------
--  Constraints for Table ȸ��
--------------------------------------------------------

  ALTER TABLE "ȸ��" MODIFY ("ȸ����ȣ" NOT NULL ENABLE);
 
  ALTER TABLE "ȸ��" MODIFY ("��й�ȣ" NOT NULL ENABLE);
 
  ALTER TABLE "ȸ��" MODIFY ("����" NOT NULL ENABLE);
 
  ALTER TABLE "ȸ��" ADD CONSTRAINT "ȸ��_PK" PRIMARY KEY ("ȸ����ȣ") ENABLE;
