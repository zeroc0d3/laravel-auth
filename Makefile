# -----------------------------------------------------------------------------
#  MAKEFILE RUNNING COMMAND
# -----------------------------------------------------------------------------
#  Author     : Dwi Fahni Denni (@zeroc0d3)
#  License    : Apache version 2
# -----------------------------------------------------------------------------
# Notes:
# use [TAB] instead [SPACE]

export PATH_WORKSPACE="./src"
export PATH_DOCKER="./docker"
export PATH_SCRIPTS="./scripts/installer/"
export PROJECT_NAME="laravel-auth"

install-ansible:
	@echo '================================'
	@echo ' Install Ansible '
	@echo '================================'
	@cd ${PATH_SCRIPTS} && bash ./install_ansible.sh
	@echo '- DONE -'

install-docker:
	@echo '================================'
	@echo ' Install Docker '
	@echo '================================'
	@cd ${PATH_SCRIPTS} && bash ./install_docker.sh
	@echo '- DONE -'

install-pyenv:
	@echo '================================'
	@echo ' Install Python Environment '
	@echo '================================'
	@cd ${PATH_SCRIPTS} && bash ./install_python_env.sh
	@python ${PATH_SCRIPTS}/get-pip.py
	@echo '- DONE -'

docker-run:
	@echo '================================'
	@echo ' Running Docker Container '
	@echo '================================'
	@cd ${PATH_DOCKER} && bash ./run-docker.sh
	@echo '- DONE -'

docker-stop:
	@echo '================================'
	@echo ' Stopping Docker Container '
	@echo '================================'
	@cd ${PATH_DOCKER} && docker-compose -f ./compose/app-compose.yml stop
	@echo '- DONE -'

docker-down:
	@echo '================================'
	@echo ' Remove Docker Container '
	@echo '================================'
	@cd ${PATH_DOCKER} && docker-compose -f ./compose/app-compose.yml down
	@echo '- DONE -'

run-project:
	@echo '================================'
	@echo ' Running Project '
	@echo '================================'
	@cd ${PATH_WORKSPACE} && php artisan serve
	@echo '- DONE -'
