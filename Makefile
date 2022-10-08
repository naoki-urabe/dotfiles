update-package:
	sudo apt update
add-apt-repository:
	sudo apt install -y software-properties-common
install-ansible:
	make update-package
	make add-apt-repository
	sudo apt-add-repository -y --update ppa:ansible/ansible
	sudo apt install -y ansible
run-playbook:
	ansible-playbook -v playbook.yaml --ask-become-pass
run-for-windows:
	ansible-playbook -v for_windows.yaml --ask-become-pass
run-asdf-package-preinstall:
	ansible-playbook -v asdf_package_preinstall.yaml