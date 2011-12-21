-- created by Oraschemadoc Wed Dec 21 14:58:51 2011
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEWALK"."RHNSERVERNETADDRESS6"
   (	"INTERFACE_ID" NUMBER NOT NULL ENABLE,
	"ADDRESS" VARCHAR2(45),
	"NETMASK" VARCHAR2(49),
	"SCOPE" VARCHAR2(64),
	"CREATED" DATE DEFAULT (sysdate) NOT NULL ENABLE,
	"MODIFIED" DATE DEFAULT (sysdate) NOT NULL ENABLE,
	 CONSTRAINT "RHN_SRV_NET_AD6_IID_SC_AD_UQ" UNIQUE ("INTERFACE_ID", "SCOPE", "ADDRESS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE,
	 CONSTRAINT "RHN_SRV_NET_IADDRESS6_IID_FK" FOREIGN KEY ("INTERFACE_ID")
	  REFERENCES "SPACEWALK"."RHNSERVERNETINTERFACE" ("ID") ON DELETE CASCADE ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ENABLE ROW MOVEMENT

/
