-- created by Oraschemadoc Wed Dec 21 14:59:56 2011
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE OR REPLACE TRIGGER "SPACEWALK"."RHN_SERVNET_IPADDR_MON_TRIG"
after insert or update on rhnServerNetwork
for each row
begin
	if inserting
		or :old.ipaddr is null and :new.ipaddr is not null
		or :old.ipaddr is not null and :new.ipaddr is null
		or :old.ipaddr <> :new.ipaddr
		or :old.ip6addr is null and :new.ip6addr is not null
		or :old.ip6addr is not null and :new.ip6addr is null
		or :old.ip6addr <> :new.ip6addr then
		update rhn_probe
		set last_update_user = 'IP change',
			last_update_date = sysdate
		where (recid, probe_type) in (
			select probe_id, probe_type
			from rhn_check_probe
			where host_id = :new.server_id
		);
	end if;
end;
ALTER TRIGGER "SPACEWALK"."RHN_SERVNET_IPADDR_MON_TRIG" ENABLE

/
