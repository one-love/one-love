PROJECT=onelove

up:
	@sudo cbsd jcreate jconf=${PWD}/cbsd.conf || true
	@sudo sh -c 'sed -e "s:PWD:${PWD}:g" -e "s:PROJECT:${PROJECT}:g" fstab.conf >/cbsd/jails-fstab/fstab.${PROJECT}'
	@sudo cbsd jstart ${PROJECT} || true

down:
	@sudo cbsd jstop ${PROJECT}

destroy:
	@sudo cbsd jremove ${PROJECT}

provision: up
	@sudo ansible-playbook -i provision/inventory provision/site.yml

login: provision
	@sudo cbsd jlogin ${PROJECT}
