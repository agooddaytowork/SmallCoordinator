#-------------------------------------------------
#
# Project created by QtCreator 2017-09-11T11:46:32
#
#-------------------------------------------------

QT       += core gui serialport serialbus sql network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
CONFIG += -std=c++11 console
TARGET = ExecSmallCoordinator
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        mainwindow.cpp \
    anLogger/src/anlogger.cpp \
    shared/abstractstatemachinebasis.cpp \
    shared/commonthings.cpp \
    shared/directtransition.cpp \
    BinaryProtocol/src/binaryprotocol.cpp \
    CanProtocol/src/canprotocol.cpp \
    WindowProtocol/src/windowprotocol.cpp \
    src/coordinateglobalsignals.cpp \
    src/directtransitionforsmallcoordinatorstate.cpp \
    src/smallcoordinator.cpp \
    src/smallcoordinatordb.cpp \
    src/wait4errorhandler4smallcoordinator.cpp \
    src/wait4readyworkers.cpp \
    piLocalDBWorker/src/errorpilocaldbworker.cpp \
    piLocalDBWorker/src/idlepilocaldbworker.cpp \
    piLocalDBWorker/src/pilocaldbworker.cpp \
    piLocalDBWorker/src/pilocaldbworkerbasis.cpp \
    piLocalDBWorker/src/runningpilocaldbworker.cpp \
    piLocalDBWorker/src/sendjsonpilocaldbworker.cpp \
    piLocalDBWorker/src/setissentpilocaldbworker.cpp \
    piLocalDBWorker/src/uninitiatedpilocaldbworker.cpp \
    SerialPortWorker/src/errorserialportworker.cpp \
    SerialPortWorker/src/idleserialportworker.cpp \
    SerialPortWorker/src/readbytesserialportworker.cpp \
    SerialPortWorker/src/runningserialportworker.cpp \
    SerialPortWorker/src/serialportworker.cpp \
    SerialPortWorker/src/serialportworkerbasis.cpp \
    SerialPortWorker/src/uninitiatedserialportworker.cpp \
    UHVPVICollector/src/emitreadi.cpp \
    UHVPVICollector/src/emitreadp.cpp \
    UHVPVICollector/src/emitreadv.cpp \
    UHVPVICollector/src/idleuhvpvicollector.cpp \
    UHVPVICollector/src/uhvpvicollector.cpp \
    UHVPVICollector/src/uhvpvicollectordb.cpp \
    UHVPVICollector/src/wait4i.cpp \
    UHVPVICollector/src/wait4p.cpp \
    UHVPVICollector/src/wait4v.cpp


HEADERS += \
        mainwindow.h \
    anLogger/src/anlogger.h \
    shared/abstractstatemachinebasis.h \
    shared/commonthings.h \
    shared/directtransition.h \
    BinaryProtocol/src/binaryprotocol.h \
    CanProtocol/src/canprotocol.h \
    WindowProtocol/src/windowprotocol.h \
    src/coordinateglobalsignals.h \
    src/directtransitionforsmallcoordinatorstate.h \
    src/smallcoordinator.h \
    src/smallcoordinatordb.h \
    src/wait4errorhandler4smallcoordinator.h \
    src/wait4readyworkers.h \
    piLocalDBWorker/src/errorpilocaldbworker.h \
    piLocalDBWorker/src/idlepilocaldbworker.h \
    piLocalDBWorker/src/pilocaldbworker.h \
    piLocalDBWorker/src/pilocaldbworkerbasis.h \
    piLocalDBWorker/src/runningpilocaldbworker.h \
    piLocalDBWorker/src/sendjsonpilocaldbworker.h \
    piLocalDBWorker/src/setissentpilocaldbworker.h \
    piLocalDBWorker/src/uninitiatedpilocaldbworker.h \
    SerialPortWorker/src/errorserialportworker.h \
    SerialPortWorker/src/idleserialportworker.h \
    SerialPortWorker/src/readbytesserialportworker.h \
    SerialPortWorker/src/runningserialportworker.h \
    SerialPortWorker/src/serialportworker.h \
    SerialPortWorker/src/serialportworkerbasis.h \
    SerialPortWorker/src/uninitiatedserialportworker.h \
    UHVPVICollector/src/emitreadi.h \
    UHVPVICollector/src/emitreadp.h \
    UHVPVICollector/src/emitreadv.h \
    UHVPVICollector/src/idleuhvpvicollector.h \
    UHVPVICollector/src/uhvpvicollector.h \
    UHVPVICollector/src/uhvpvicollectordb.h \
    UHVPVICollector/src/wait4i.h \
    UHVPVICollector/src/wait4p.h \
    UHVPVICollector/src/wait4v.h

FORMS += \
        mainwindow.ui
