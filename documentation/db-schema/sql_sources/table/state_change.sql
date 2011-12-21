-- created by Oraschemadoc Wed Dec 21 14:59:08 2011
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEWALK"."STATE_CHANGE" 
   (	"O_ID" VARCHAR2(64) NOT NULL ENABLE, 
	"ENTRY_TIME" NUMBER NOT NULL ENABLE, 
	"DATA" VARCHAR2(4000)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ENABLE ROW MOVEMENT 
 
/
