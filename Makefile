update-package:
	sudo apt update
add-apt-repository:
	sudo apt install -y software-properties-common
install-ansible:
	make update-package
	make add-apt-repository
	sudo apt-add-repository -y --update ppa:ansible/ansible
	sudo apt install -y ansible
