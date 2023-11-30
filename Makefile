.DEFAULT_GOAL := create

init:
	terraform init

create: init
	terraform plan -out aro.plan


	terraform apply aro.plan 

destroy:
	terraform destroy -auto-approve

destroy.force:
	terraform destroy -auto-approve

delete: destroy

help:
	@echo make [create|destroy]
