
##############################################################
#
# AESD Final Project
#
##############################################################

AESD_ASSIGNMENTS_VERSION = 39634a90a36417cd55882d2cefc45562c2222534
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_ASSIGNMENTS_SITE = git@github.com:sgreene30/final-project-assignment-sgreene30.git
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES
AESD_ASSIGNMENTS_MODULE_SUBDIRS = portAudioDemo
AESD_ASSIGNMNETS_MODULE_MAKE_OPTS = KVERSION=$(LINUX_VERSION_PROBED)

#define AUDIO_BUILD_CMDS
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/portAudioDemo 
#endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
#define AUDIO_INSTALL_TARGET_CMDS
#	$(INSTALL) -m 0755 $(@D)/portAudioDemo/instrument $(TARGET_DIR)/usr/bin

#endef

$(eval $(generic-package))
