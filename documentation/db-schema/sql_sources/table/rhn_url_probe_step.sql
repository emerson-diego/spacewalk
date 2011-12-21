-- created by Oraschemadoc Wed Dec 21 14:59:08 2011
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEWALK"."RHN_URL_PROBE_STEP" 
   (	"RECID" NUMBER(12,0) NOT NULL ENABLE, 
	"URL_PROBE_ID" NUMBER(12,0) NOT NULL ENABLE, 
	"STEP_NUMBER" NUMBER(3,0) NOT NULL ENABLE, 
	"DESCRIPTION" VARCHAR2(255), 
	"URL" VARCHAR2(2000) NOT NULL ENABLE, 
	"PROTOCOL_METHOD" VARCHAR2(12) NOT NULL ENABLE, 
	"VERIFY_LINKS" CHAR(1) DEFAULT (0) NOT NULL ENABLE, 
	"LOAD_SUBSIDIARY" CHAR(1) DEFAULT (0) NOT NULL ENABLE, 
	"PATTERN" VARCHAR2(255), 
	"VPATTERN" VARCHAR2(255), 
	"POST_CONTENT" VARCHAR2(4000), 
	"POST_CONTENT_TYPE" VARCHAR2(255), 
	"CONNECT_WARN" NUMBER(10,3) DEFAULT (0) NOT NULL ENABLE, 
	"CONNECT_CRIT" NUMBER(10,3) DEFAULT (0) NOT NULL ENABLE, 
	"LATENCY_WARN" NUMBER(10,3) DEFAULT (0) NOT NULL ENABLE, 
	"LATENCY_CRIT" NUMBER(10,3) DEFAULT (0) NOT NULL ENABLE, 
	"DNS_WARN" NUMBER(10,3) DEFAULT (0) NOT NULL ENABLE, 
	"DNS_CRIT" NUMBER(10,3) DEFAULT (0) NOT NULL ENABLE, 
	"TOTAL_WARN" NUMBER(10,3) DEFAULT (0) NOT NULL ENABLE, 
	"TOTAL_CRIT" NUMBER(10,3) DEFAULT (0) NOT NULL ENABLE, 
	"TRANS_WARN" NUMBER(12,0) DEFAULT (0) NOT NULL ENABLE, 
	"TRANS_CRIT" NUMBER(12,0) DEFAULT (0) NOT NULL ENABLE, 
	"THROUGH_WARN" NUMBER(12,0) DEFAULT (0) NOT NULL ENABLE, 
	"THROUGH_CRIT" NUMBER(12,0) DEFAULT (0) NOT NULL ENABLE, 
	"COOKIE_KEY" VARCHAR2(255), 
	"COOKIE_VALUE" VARCHAR2(255), 
	"COOKIE_PATH" VARCHAR2(255), 
	"COOKIE_DOMAIN" VARCHAR2(255), 
	"COOKIE_PORT" NUMBER(5,0), 
	"COOKIE_SECURE" CHAR(1) DEFAULT (0) NOT NULL ENABLE, 
	"COOKIE_MAXAGE" NUMBER(9,0), 
	 CONSTRAINT "RHN_URLPS_VER_LINKS_CK" CHECK (verify_links in ('0','1')) ENABLE, 
	 CONSTRAINT "RHN_URLPS_LOAD_SUB_CK" CHECK (load_subsidiary in ('0','1')) ENABLE, 
	 CONSTRAINT "RHN_URLPS_COOKIE_SEC_CK" CHECK (cookie_secure in ('0','1')) ENABLE, 
	 CONSTRAINT "RHN_URLPS_RECID_PK" PRIMARY KEY ("RECID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "RHN_URLPS_URLPB_URL_PR_ID_FK" FOREIGN KEY ("URL_PROBE_ID")
	  REFERENCES "SPACEWALK"."RHN_URL_PROBE" ("PROBE_ID") ON DELETE CASCADE ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ENABLE ROW MOVEMENT 
 
/
