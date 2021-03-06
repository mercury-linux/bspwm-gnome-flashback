INSTALL = install
DESTDIR ?= /
PREFIX ?= $(DESTDIR)/usr

PATH_BSPWM_GNOME_BIN = bin/bspwm-session-init
PATH_BSPWM_GNOME_SESSION_BIN = bin/bspwm-session
PATH_BSPWM_GNOME_DESKTOP = share/applications/bspwm-gnome.desktop
PATH_BSPWM_GNOME_SESSION = share/gnome-session/sessions/bspwm-gnome.session
PATH_BSPWM_GNOME_XSESSION = share/xsessions/bspwm-gnome.desktop

LOCAL_PREFIX = usr

all:
	@echo "Nothing to do"

install:
	$(INSTALL) -m0755 -D $(LOCAL_PREFIX)/$(PATH_BSPWM_GNOME_BIN) $(PREFIX)/$(PATH_BSPWM_GNOME_BIN)
	$(INSTALL) -m0755 -D $(LOCAL_PREFIX)/$(PATH_BSPWM_GNOME_SESSION_BIN) $(PREFIX)/$(PATH_BSPWM_GNOME_SESSION_BIN)
	$(INSTALL) -m0644 -D $(LOCAL_PREFIX)/$(PATH_BSPWM_GNOME_DESKTOP) $(PREFIX)/$(PATH_BSPWM_GNOME_DESKTOP)
	$(INSTALL) -m0644 -D $(LOCAL_PREFIX)/$(PATH_BSPWM_GNOME_SESSION) $(PREFIX)/$(PATH_BSPWM_GNOME_SESSION)
	$(INSTALL) -m0644 -D $(LOCAL_PREFIX)/$(PATH_BSPWM_GNOME_XSESSION) $(PREFIX)/$(PATH_BSPWM_GNOME_XSESSION)

uninstall:
	rm -rf  $(PREFIX)/$(PATH_BSPWM_GNOME_BIN)   		\
	 		$(PREFIX)/$(PATH_BSPWM_GNOME_SESSION_BIN) 	\
	 	 	$(PREFIX)/$(PATH_BSPWM_GNOME_DESKTOP)    	\
			$(PREFIX)/$(PATH_BSPWM_GNOME_SESSION)		\
			$(PREFIX)/$(PATH_BSPWM_GNOME_XSESSION)

.PHONY: all install uninstall
