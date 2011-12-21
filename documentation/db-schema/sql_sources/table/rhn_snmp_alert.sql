-- created by Oraschemadoc Wed Dec 21 14:59:07 2011
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEWALK"."RHN_SNMP_ALERT" 
   (	"RECID" NUMBER(12,0) NOT NULL ENABLE, 
	"SENDER_CLUSTER_ID" NUMBER(12,0) NOT NULL ENABLE, 
	"DEST_IP" VARCHAR2(255) NOT NULL ENABLE, 
	"DEST_PORT" NUMBER(5,0) NOT NULL ENABLE, 
	"DATE_GENERATED" DATE, 
	"DATE_SUBMITTED" DATE, 
	"COMMAND_NAME" VARCHAR2(255), 
	"NOTIF_TYPE" NUMBER(5,0), 
	"OP_CENTER" VARCHAR2(255), 
	"NOTIF_URL" VARCHAR2(255), 
	"OS_NAME" VARCHAR2(128), 
	"MESSAGE" VARCHAR2(2000), 
	"PROBE_ID" NUMBER(12,0), 
	"HOST_IP" VARCHAR2(255), 
	"SEVERITY" NUMBER(5,0), 
	"COMMAND_ID" NUMBER(12,0), 
	"PROBE_CLASS" NUMBER(5,0), 
	"HOST_NAME" VARCHAR2(255), 
	"SUPPORT_CENTER" VARCHAR2(255), 
	 CONSTRAINT "RHN_SNMPA_RECID_PK" PRIMARY KEY ("RECID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "RHN_SNMP_ALERT_SAT_CLUSTER_FK" FOREIGN KEY ("SENDER_CLUSTER_ID")
	  REFERENCES "SPACEWALK"."RHN_SAT_CLUSTER" ("RECID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ENABLE ROW MOVEMENT 
 
/
