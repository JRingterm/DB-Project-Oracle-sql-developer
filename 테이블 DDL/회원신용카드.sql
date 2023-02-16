--------------------------------------------------------
--  DDL for Table ȸ���ſ�ī��
--------------------------------------------------------

  CREATE TABLE "ȸ���ſ�ī��" 
   (	"ȸ����ȣ" VARCHAR2(10 BYTE), 
	"ī���ȣ" VARCHAR2(20 BYTE), 
	"��ȿ�Ⱓ" VARCHAR2(10 BYTE), 
	"ī������" VARCHAR2(10 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Index ȸ���ſ�ī��_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ȸ���ſ�ī��_PK" ON "ȸ���ſ�ī��" ("ȸ����ȣ", "ī���ȣ") 
  ;
--------------------------------------------------------
--  Constraints for Table ȸ���ſ�ī��
--------------------------------------------------------

  ALTER TABLE "ȸ���ſ�ī��" MODIFY ("ȸ����ȣ" NOT NULL ENABLE);
 
  ALTER TABLE "ȸ���ſ�ī��" MODIFY ("ī���ȣ" NOT NULL ENABLE);
 
  ALTER TABLE "ȸ���ſ�ī��" MODIFY ("��ȿ�Ⱓ" NOT NULL ENABLE);
 
  ALTER TABLE "ȸ���ſ�ī��" MODIFY ("ī������" NOT NULL ENABLE);
 
  ALTER TABLE "ȸ���ſ�ī��" ADD CONSTRAINT "ȸ���ſ�ī��_PK" PRIMARY KEY ("ȸ����ȣ", "ī���ȣ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ȸ���ſ�ī��
--------------------------------------------------------

  ALTER TABLE "ȸ���ſ�ī��" ADD CONSTRAINT "ȸ���ſ�ī��_ȸ��_FK" FOREIGN KEY ("ȸ����ȣ")
	  REFERENCES "ȸ��" ("ȸ����ȣ") ENABLE;
