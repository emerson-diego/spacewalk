-- created by Oraschemadoc Wed Dec 21 14:58:43 2011
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEWALK"."RHNPACKAGEDELTAELEMENT" 
   (	"PACKAGE_DELTA_ID" NUMBER NOT NULL ENABLE, 
	"TRANSACTION_PACKAGE_ID" NUMBER NOT NULL ENABLE, 
	 CONSTRAINT "RHN_PDELEMENT_PDID_FK" FOREIGN KEY ("PACKAGE_DELTA_ID")
	  REFERENCES "SPACEWALK"."RHNPACKAGEDELTA" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_PDELEMENT_TPID_FK" FOREIGN KEY ("TRANSACTION_PACKAGE_ID")
	  REFERENCES "SPACEWALK"."RHNTRANSACTIONPACKAGE" ("ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ENABLE ROW MOVEMENT 
 
/
