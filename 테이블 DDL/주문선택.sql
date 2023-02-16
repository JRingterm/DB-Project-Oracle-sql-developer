--------------------------------------------------------
--  DDL for Table �ֹ�����
--------------------------------------------------------

  CREATE TABLE "�ֹ�����" 
   (	"�ֹ���ȣ" VARCHAR2(20 BYTE), 
	"������ȣ" VARCHAR2(10 BYTE), 
	"����" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Index �ֹ�����_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "�ֹ�����_PK" ON "�ֹ�����" ("�ֹ���ȣ", "������ȣ") 
  ;
--------------------------------------------------------
--  Constraints for Table �ֹ�����
--------------------------------------------------------

  ALTER TABLE "�ֹ�����" MODIFY ("�ֹ���ȣ" NOT NULL ENABLE);
 
  ALTER TABLE "�ֹ�����" MODIFY ("������ȣ" NOT NULL ENABLE);
 
  ALTER TABLE "�ֹ�����" MODIFY ("����" NOT NULL ENABLE);
 
  ALTER TABLE "�ֹ�����" ADD CONSTRAINT "�ֹ�����_CK" CHECK (���� >= 1) ENABLE;
 
  ALTER TABLE "�ֹ�����" ADD CONSTRAINT "�ֹ�����_PK" PRIMARY KEY ("�ֹ���ȣ", "������ȣ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table �ֹ�����
--------------------------------------------------------

  ALTER TABLE "�ֹ�����" ADD CONSTRAINT "�ֹ�����_����_FK" FOREIGN KEY ("������ȣ")
	  REFERENCES "����" ("������ȣ") ENABLE;
 
  ALTER TABLE "�ֹ�����" ADD CONSTRAINT "�ֹ�����_�ֹ�_FK" FOREIGN KEY ("�ֹ���ȣ")
	  REFERENCES "�ֹ�" ("�ֹ���ȣ") ENABLE;
