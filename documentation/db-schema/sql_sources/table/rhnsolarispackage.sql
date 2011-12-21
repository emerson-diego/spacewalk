-- created by Oraschemadoc Wed Dec 21 14:58:54 2011
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEWALK"."RHNSOLARISPACKAGE" 
   (	"PACKAGE_ID" NUMBER, 
	"CATEGORY" VARCHAR2(2048) NOT NULL ENABLE, 
	"PKGINFO" VARCHAR2(4000), 
	"PKGMAP" BLOB, 
	"INTONLY" CHAR(1) DEFAULT ('N'), 
	 CONSTRAINT "RHN_SOLARIS_PKG_IO_CK" CHECK ( intonly in ('Y','N')) ENABLE, 
	 CONSTRAINT "RHN_SOLARIS_PKG_PID_PK" PRIMARY KEY ("PACKAGE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE, 
	 CONSTRAINT "RHN_SOLARIS_PKG_PID_FK" FOREIGN KEY ("PACKAGE_ID")
	  REFERENCES "SPACEWALK"."RHNPACKAGE" ("ID") ON DELETE CASCADE ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" 
 LOB ("PKGMAP") STORE AS (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)) ENABLE ROW MOVEMENT 
 
/
