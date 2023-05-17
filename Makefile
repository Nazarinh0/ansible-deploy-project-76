install-requirements:
	ansible-galaxy install -r requirements.yml

install-packages:
	ansible-playbook playbook.yml -i inventory.ini -t install --vault-password-file ./.vault_password

install-datadog:
	ansible-playbook playbook.yml -i inventory.ini -t install-datadog --vault-password-file ./.vault_password

edit-vault:
	ansible-vault edit group_vars/all/vault.yml --vault-password-file ./.vault_password

docker-ps:
	ansible all -i inventory.ini -u nazarinho -a "docker ps -a" --vault-password-file ./.vault_password

start:
	ansible-playbook playbook.yml -i inventory.ini -t start --vault-password-file ./.vault_password
