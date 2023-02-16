--------------------------------------------------------
--  DDL for Table �ֹ�
--------------------------------------------------------

  CREATE TABLE "�ֹ�" 
   (	"�ֹ���ȣ" VARCHAR2(20 BYTE), 
	"�ֹ�����" DATE, 
	"�ֹ��Ѿ�" NUMBER(*,0), 
	"�ֹ�����" VARCHAR2(10 BYTE), 
	"�ſ�ī��_ī���ȣ" VARCHAR2(20 BYTE), 
	"�ſ�ī��_��ȿ�Ⱓ" VARCHAR2(20 BYTE), 
	"�ſ�ī��_ī������" VARCHAR2(10 BYTE), 
	"�����_�����ȣ" VARCHAR2(10 BYTE), 
	"�����_�⺻�ּ�" VARCHAR2(100 BYTE), 
	"�����_���ּ�" VARCHAR2(100 BYTE), 
	"ȸ����ȣ" VARCHAR2(10 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Index �ֹ�_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "�ֹ�_PK" ON "�ֹ�" ("�ֹ���ȣ") 
  ;
--------------------------------------------------------
--  Constraints for Table �ֹ�
--------------------------------------------------------

  ALTER TABLE "�ֹ�" MODIFY ("�ֹ���ȣ" NOT NULL ENABLE);
 
  ALTER TABLE "�ֹ�" MODIFY ("�ֹ�����" NOT NULL ENABLE);
 
  ALTER TABLE "�ֹ�" MODIFY ("�ֹ��Ѿ�" NOT NULL ENABLE);
 
  ALTER TABLE "�ֹ�" MODIFY ("�ֹ�����" NOT NULL ENABLE);
 
  ALTER TABLE "�ֹ�" MODIFY ("�ſ�ī��_ī���ȣ" NOT NULL ENABLE);
 
  ALTER TABLE "�ֹ�" MODIFY ("�ſ�ī��_��ȿ�Ⱓ" NOT NULL ENABLE);
 
  ALTER TABLE "�ֹ�" MODIFY ("�ſ�ī��_ī������" NOT NULL ENABLE);
 
  ALTER TABLE "�ֹ�" MODIFY ("�����_�����ȣ" NOT NULL ENABLE);
 
  ALTER TABLE "�ֹ�" MODIFY ("�����_�⺻�ּ�" NOT NULL ENABLE);
 
  ALTER TABLE "�ֹ�" MODIFY ("�����_���ּ�" NOT NULL ENABLE);
 
  ALTER TABLE "�ֹ�" MODIFY ("ȸ����ȣ" NOT NULL ENABLE);
 
  ALTER TABLE "�ֹ�" ADD CONSTRAINT "�ֹ�_PK" PRIMARY KEY ("�ֹ���ȣ") ENABLE;
 
  ALTER TABLE "�ֹ�" ADD CONSTRAINT "�ֹ�_����CK" CHECK (�ֹ����� IN ('��û','�߼�','�ǸſϷ�')) ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table �ֹ�
--------------------------------------------------------

  ALTER TABLE "�ֹ�" ADD CONSTRAINT "�ֹ�_ȸ��_FK" FOREIGN KEY ("ȸ����ȣ")
	  REFERENCES "ȸ��" ("ȸ����ȣ") ENABLE;
