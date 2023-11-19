
##############################################################
#
# AESD Final Project
#
##############################################################

AUDIO_VERSION = e52f432d12f54c49443f3f9803ed0da590845de9
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AUDIO_SITE = git@github.com:sgreene30/final-project-assignment-sgreene30.git
AUDIO_SITE_METHOD = git
AUDIO_GIT_SUBMODULES = YES
AUDIO_MODULE_MAKE_OPTS = KVERSION=$(LINUX_VERSION_PROBED)

#define AUDIO_BUILD_CMDS
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/portAudioDemo install-deps
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/portAudioDemo
	
#endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AUDIO_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/gpio/input.py $(TARGET_DIR)/usr/bin
endef
#	$(INSTALL) -m 0755 $(@D)/portAudioDemo/instrument $(TARGET_DIR)/usr/bin
#endef

$(eval $(generic-package))
