CONFIG += zint
ZINT_PATH = $$PWD/3rdparty/zint-2.4.4

LIMEREPORT_VERSION_MAJOR = 1
LIMEREPORT_VERSION_MINOR = 3
LIMEREPORT_VERSION_RELEASE = 10

LIMEREPORT_VERSION = '\\"$${LIMEREPORT_VERSION_MAJOR}.$${LIMEREPORT_VERSION_MINOR}.$${LIMEREPORT_VERSION_RELEASE}\\"'
DEFINES += LIMEREPORT_VERSION_STR=\"$${LIMEREPORT_VERSION}\"
DEFINES += LIMEREPORT_VERSION=$${LIMEREPORT_VERSION}

QT += script xml sql
REPORT_PATH = $$PWD/limereport

greaterThan(QT_MAJOR_VERSION, 4) {
    DEFINES+=HAVE_QT5
    QT+= printsupport widgets
    contains(QT,uitools){
        message(uitools)
        DEFINES += HAVE_UI_LOADER
    }
}

lessThan(QT_MAJOR_VERSION, 5){
    CONFIG(uitools){
        message(uitools)
        DEFINES += HAVE_UI_LOADER
    }
}
