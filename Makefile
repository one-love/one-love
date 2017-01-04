PROJECT=onelove

up:
	@sudo cbsd jcreate jconf=${PWD}/cbsd.conf || true
	@sudo cbsd jstart ${PROJECT} || true

down:
	@sudo cbsd jstop ${PROJECT}

destroy:
	@sudo cbsd jremove ${PROJECT}

provision: up
	@sudo ansible-playbook -i provision/inventory provision/site.yml

login: up
	@sudo cbsd jlogin ${PROJECT}
