-- created by Oraschemadoc Wed Dec 21 14:58:55 2011
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEWALK"."RHNSYSTEMMIGRATIONS" 
   (	"ORG_ID_TO" NUMBER, 
	"ORG_ID_FROM" NUMBER, 
	"SERVER_ID" NUMBER NOT NULL ENABLE, 
	"MIGRATED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_SYS_MIG_OIDTO_FK" FOREIGN KEY ("ORG_ID_TO")
	  REFERENCES "SPACEWALK"."WEB_CUSTOMER" ("ID") ON DELETE SET NULL ENABLE, 
	 CONSTRAINT "RHN_SYS_MIG_OIDFRM_FK" FOREIGN KEY ("ORG_ID_FROM")
	  REFERENCES "SPACEWALK"."WEB_CUSTOMER" ("ID") ON DELETE SET NULL ENABLE, 
	 CONSTRAINT "RHN_SYS_MIG_SID_FK" FOREIGN KEY ("SERVER_ID")
	  REFERENCES "SPACEWALK"."RHNSERVER" ("ID") ON DELETE CASCADE ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ENABLE ROW MOVEMENT 
 
/
