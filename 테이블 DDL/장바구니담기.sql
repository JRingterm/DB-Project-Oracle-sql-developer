--------------------------------------------------------
--  DDL for Table ��ٱ��ϴ��
--------------------------------------------------------

  CREATE TABLE "��ٱ��ϴ��" 
   (	"�ٱ��Ϲ�ȣ" NUMBER(*,0), 
	"������ȣ" VARCHAR2(10 BYTE), 
	"����" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Index ��ٱ��ϴ��_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "��ٱ��ϴ��_PK" ON "��ٱ��ϴ��" ("�ٱ��Ϲ�ȣ", "������ȣ") 
  ;
--------------------------------------------------------
--  Constraints for Table ��ٱ��ϴ��
--------------------------------------------------------

  ALTER TABLE "��ٱ��ϴ��" MODIFY ("�ٱ��Ϲ�ȣ" NOT NULL ENABLE);
 
  ALTER TABLE "��ٱ��ϴ��" MODIFY ("������ȣ" NOT NULL ENABLE);
 
  ALTER TABLE "��ٱ��ϴ��" MODIFY ("����" NOT NULL ENABLE);
 
  ALTER TABLE "��ٱ��ϴ��" ADD CONSTRAINT "��ٱ��ϴ��_PK" PRIMARY KEY ("�ٱ��Ϲ�ȣ", "������ȣ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ��ٱ��ϴ��
--------------------------------------------------------

  ALTER TABLE "��ٱ��ϴ��" ADD CONSTRAINT "��ٱ��ϴ��_����_FK" FOREIGN KEY ("������ȣ")
	  REFERENCES "����" ("������ȣ") ENABLE;
 
  ALTER TABLE "��ٱ��ϴ��" ADD CONSTRAINT "��ٱ��ϴ��_��ٱ���_FK" FOREIGN KEY ("�ٱ��Ϲ�ȣ")
	  REFERENCES "��ٱ���" ("�ٱ��Ϲ�ȣ") ENABLE;
