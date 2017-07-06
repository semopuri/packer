create-ami:
	@cd ansible; \
	ansible-galaxy install -r requirement.yml --roles-path roles;
	@packer build packer/packer-aws-ami-template.json | tee -a packer.log
