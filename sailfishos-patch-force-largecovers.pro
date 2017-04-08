# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = sailfishos-patch-force-largecovers

TEMPLATE = aux

patch.path = /usr/share/patchmanager/patches/eugenio-force-largecovers
patch.files = data/unified_diff.patch data/patch.json

settings-entry.path = /usr/share/jolla-settings/entries
settings-entry.files = settings/force-largecovers-patch-application-switcher.json

settings-qml.path = /usr/share/jolla-settings/pages/force-largecovers-patch-application-switcher
settings-qml.files = settings/force-largecovers-patch-application-switcher.qml

INSTALLS += \
        patch \
        settings-entry \
        settings-qml


OTHER_FILES += \
    rpm/sailfishos-patch-force-largecovers.spec \
    rpm/sailfishos-patch-force-largecovers.yaml \
    data/unified_diff.patch \
    data/patch.json \
    settings/force-largecovers-patch-application-switcher.json \
    settings/force-largecovers-patch-application-switcher.qml \
    rpm/sailfishos-patch-force-largecovers.changes
