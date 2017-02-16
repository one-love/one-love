PROJECT=onelove

up:
	@sudo cbsd jcreate jconf=${PWD}/cbsd.conf || true
	@sudo sh -c 'sed -e "s:PWD:${PWD}:g" -e "s:PROJECT:${PROJECT}:g" fstab.conf >/cbsd/jails-fstab/fstab.${PROJECT}'
	@sudo cbsd jstart ${PROJECT} || true
.if !exists(.provisioned)
	${MAKE} ${MAKEFLAGS} ansible
.endif

ansible:
	@sed -e "s:PROJECT:${PROJECT}:g" provision/inventory.tpl >provision/inventory
	@sed -e "s:PROJECT:${PROJECT}:g" provision/group_vars/all.tpl >provision/group_vars/all
	@sed -e "s:PROJECT:${PROJECT}:g" provision/site.yml.tpl >provision/site.yml
	@sudo ansible-playbook -i provision/inventory provision/site.yml
	@touch .provisioned

login:
	@sudo cbsd jlogin ${PROJECT}

down:
	@sudo cbsd jstop ${PROJECT} || true
	@sed -e "s:PROJECT:${PROJECT}:g" provision/inventory.tpl >provision/inventory
	@sudo ansible-playbook -i provision/inventory provision/teardown.yml

destroy: down
	@rm -f provision/inventory provision/site.yml provision/group_vars/all
	@sudo cbsd jremove ${PROJECT}
