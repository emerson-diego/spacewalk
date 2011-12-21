-- created by Oraschemadoc Wed Dec 21 14:59:04 2011
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEWALK"."RHN_PROBE_PARAM_VALUE" 
   (	"PROBE_ID" NUMBER NOT NULL ENABLE, 
	"COMMAND_ID" NUMBER NOT NULL ENABLE, 
	"PARAM_NAME" VARCHAR2(40) NOT NULL ENABLE, 
	"VALUE" VARCHAR2(1024), 
	"LAST_UPDATE_USER" VARCHAR2(40), 
	"LAST_UPDATE_DATE" DATE, 
	 CONSTRAINT "RHN_PPVAL_P_ID_CMD_ID_PARM_PK" PRIMARY KEY ("PROBE_ID", "COMMAND_ID", "PARAM_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "RHN_PPVAL_CHKPB_PROBE_ID_FK" FOREIGN KEY ("PROBE_ID")
	  REFERENCES "SPACEWALK"."RHN_PROBE" ("RECID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_PPVAL_CMD_ID_PARM_NM_FK" FOREIGN KEY ("COMMAND_ID", "PARAM_NAME")
	  REFERENCES "SPACEWALK"."RHN_COMMAND_PARAMETER" ("COMMAND_ID", "PARAM_NAME") ON DELETE CASCADE ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ENABLE ROW MOVEMENT 
 
/
