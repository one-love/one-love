PROJECT=onelove

up:
	@sudo cbsd jcreate jconf=${PWD}/cbsd.conf || true
	@sudo sh -c 'sed -e "s:PWD:${PWD}:g" -e "s:PROJECT:${PROJECT}:g" fstab.conf >/cbsd/jails-fstab/fstab.${PROJECT}'
	@sudo cbsd jstart ${PROJECT} || true

down:
	@sudo cbsd jstop ${PROJECT} || true
	@sed -e "s:PROJECT:${PROJECT}:g" provision/inventory.tpl >provision/inventory
	@sudo ansible-playbook -i provision/inventory provision/teardown.yml

destroy: down
	@rm provision/inventory
	@sudo cbsd jremove ${PROJECT}

provision: up
	@sed -e "s:PROJECT:${PROJECT}:g" provision/inventory.tpl >provision/inventory
	@sudo ansible-playbook -i provision/inventory provision/site.yml

login: provision
	@sudo cbsd jlogin ${PROJECT}
