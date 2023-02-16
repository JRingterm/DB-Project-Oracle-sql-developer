--------------------------------------------------------
--  DDL for Table ȸ���ּҷ�
--------------------------------------------------------

  CREATE TABLE "ȸ���ּҷ�" 
   (	"ȸ����ȣ" VARCHAR2(10 BYTE), 
	"�����" VARCHAR2(10 BYTE), 
	"�����ȣ" VARCHAR2(10 BYTE), 
	"�⺻�ּ�" VARCHAR2(100 BYTE), 
	"���ּ�" VARCHAR2(100 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Index ȸ���ּҷ�_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ȸ���ּҷ�_PK" ON "ȸ���ּҷ�" ("ȸ����ȣ", "�����") 
  ;
--------------------------------------------------------
--  Constraints for Table ȸ���ּҷ�
--------------------------------------------------------

  ALTER TABLE "ȸ���ּҷ�" MODIFY ("ȸ����ȣ" NOT NULL ENABLE);
 
  ALTER TABLE "ȸ���ּҷ�" MODIFY ("�����" NOT NULL ENABLE);
 
  ALTER TABLE "ȸ���ּҷ�" MODIFY ("�����ȣ" NOT NULL ENABLE);
 
  ALTER TABLE "ȸ���ּҷ�" MODIFY ("�⺻�ּ�" NOT NULL ENABLE);
 
  ALTER TABLE "ȸ���ּҷ�" MODIFY ("���ּ�" NOT NULL ENABLE);
 
  ALTER TABLE "ȸ���ּҷ�" ADD CONSTRAINT "ȸ���ּҷ�_CK" CHECK (����� IN ('��','����')) ENABLE;
 
  ALTER TABLE "ȸ���ּҷ�" ADD CONSTRAINT "ȸ���ּҷ�_PK" PRIMARY KEY ("ȸ����ȣ", "�����") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ȸ���ּҷ�
--------------------------------------------------------

  ALTER TABLE "ȸ���ּҷ�" ADD CONSTRAINT "ȸ���ּҷ�_ȸ��_FK" FOREIGN KEY ("ȸ����ȣ")
	  REFERENCES "ȸ��" ("ȸ����ȣ") ENABLE;
