--------------------------------------------------------
--  DDL for Table ����
--------------------------------------------------------

  CREATE TABLE "����" 
   (	"������ȣ" VARCHAR2(10 BYTE), 
	"������" VARCHAR2(30 BYTE), 
	"���" NUMBER(*,0), 
	"�ǸŰ�" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Index ����_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "����_PK" ON "����" ("������ȣ") 
  ;
--------------------------------------------------------
--  Constraints for Table ����
--------------------------------------------------------

  ALTER TABLE "����" MODIFY ("������ȣ" NOT NULL ENABLE);
 
  ALTER TABLE "����" MODIFY ("������" NOT NULL ENABLE);
 
  ALTER TABLE "����" MODIFY ("���" NOT NULL ENABLE);
 
  ALTER TABLE "����" MODIFY ("�ǸŰ�" NOT NULL ENABLE);
 
  ALTER TABLE "����" ADD CONSTRAINT "����_PK" PRIMARY KEY ("������ȣ") ENABLE;
