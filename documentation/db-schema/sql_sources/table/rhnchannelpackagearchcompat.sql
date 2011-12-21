-- created by Oraschemadoc Wed Dec 21 14:58:30 2011
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEWALK"."RHNCHANNELPACKAGEARCHCOMPAT" 
   (	"CHANNEL_ARCH_ID" NUMBER NOT NULL ENABLE, 
	"PACKAGE_ARCH_ID" NUMBER NOT NULL ENABLE, 
	"CREATED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	"MODIFIED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_CP_AC_CAID_PAID_UQ" UNIQUE ("CHANNEL_ARCH_ID", "PACKAGE_ARCH_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "RHN_CP_AC_CAID_FK" FOREIGN KEY ("CHANNEL_ARCH_ID")
	  REFERENCES "SPACEWALK"."RHNCHANNELARCH" ("ID") ENABLE, 
	 CONSTRAINT "RHN_CP_AC_PAID_FK" FOREIGN KEY ("PACKAGE_ARCH_ID")
	  REFERENCES "SPACEWALK"."RHNPACKAGEARCH" ("ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ENABLE ROW MOVEMENT 
 
/
