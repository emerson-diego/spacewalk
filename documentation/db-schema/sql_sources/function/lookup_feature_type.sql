-- created by Oraschemadoc Wed Dec 21 14:59:58 2011
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE FUNCTION "SPACEWALK"."LOOKUP_FEATURE_TYPE" (label_in in varchar2)
return number
deterministic
is
	feature_id number;
begin
	select	id
	into	feature_id
	from  rhnFeature
	where	label = label_in;

	return feature_id;
exception
        when no_data_found then
            rhn_exception.raise_exception('invalid_feature');
end;
 
/
