IMAGE := alpine/fio
APP:="scripts/usernetes-containerd.sh"

deploy-centos7-hipaa:
	bash scripts/deploy-centos7-hipaa.sh

deploy-centos7-pcidss:
	bash scripts/deploy-centos7-pcidss.sh

deploy-centos7-stig:
	bash scripts/deploy-centos7-stig.sh

deploy-centos8-pcidss:
	bash scripts/deploy-centos8-pcidss.sh

deploy-centos8-stig:
	bash scripts/deploy-centos8-stig.sh

deploy-complianceascode-suse:
	bash scripts/deploy-complianceascode-suse.sh

deploy-complianceascode-debian:
	bash scripts/deploy-complianceascode-debian.sh

deploy-complianceascode-redhat:
	bash scripts/deploy-complianceascode-redhat.sh

deploy-libvirt:
	bash scripts/deploy-libvirt.sh

deploy-vagrant:
	bash scripts/deploy-vagrant.sh

deploy-packer:
	bash scripts/deploy-packer.sh

deploy-terraform:
	bash scripts/deploy-terraform.sh
	
push-image:
	docker push $(IMAGE)

.PHONY: deploy-libvirt deploy-vagrant deploy-packer deploy-terraform push-image
