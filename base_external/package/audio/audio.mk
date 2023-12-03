
##############################################################
#
# AESD Final Project
#
##############################################################

AUDIO_VERSION = ddece08128666738292c7c637dece2dc9651871c
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AUDIO_SITE = git@github.com:sgreene30/final-project-assignment-sgreene30.git
AUDIO_SITE_METHOD = git
AUDIO_GIT_SUBMODULES = YES
AUDIO_MODULE_MAKE_OPTS = KVERSION=$(LINUX_VERSION_PROBED)

define AUDIO_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/daisySPDemo drum
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/daisySPDemo hat
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AUDIO_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/gpio/poll_input.py $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/daisySPDemo/drum $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/daisySPDemo/hat $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
