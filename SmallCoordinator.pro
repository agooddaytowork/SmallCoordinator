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
    shared/commonthings.cpp \
    BinaryProtocol/src/binaryprotocol.cpp \
    CanProtocol/src/canprotocol.cpp \
    WindowProtocol/src/windowprotocol.cpp \
    piLocalDBWorker/src/connectdatabase.cpp \
    piLocalDBWorker/src/directtransition4pilocaldbworkerstate.cpp \
    piLocalDBWorker/src/pilocaldbworker.cpp \
    piLocalDBWorker/src/pilocaldbworkervarset.cpp \
    piLocalDBWorker/src/setissentcolumnonlocaldatabase.cpp \
    piLocalDBWorker/src/updatelocaldatabase.cpp \
    piLocalDBWorker/src/updateonlinedatabase.cpp \
    piLocalDBWorker/src/wait4errorhandler4pilocaldbworker.cpp \
    SerialPortWorker/src/connectserialport.cpp \
    SerialPortWorker/src/directtransition4serialportworkerstate.cpp \
    SerialPortWorker/src/readbytes.cpp \
    SerialPortWorker/src/requestserialportinfo.cpp \
    SerialPortWorker/src/serialportworker.cpp \
    SerialPortWorker/src/serialportworkerproperty.cpp \
    SerialPortWorker/src/validateserialportinfo.cpp \
    SerialPortWorker/src/wait4errorhandler4serialportworker.cpp \
    SerialPortWorker/src/writebytes.cpp \
    UHVPVICollector/src/directtransitionforuhvpvicollectorstate.cpp \
    UHVPVICollector/src/emitreadi.cpp \
    UHVPVICollector/src/emitreadp.cpp \
    UHVPVICollector/src/emitreadv.cpp \
    UHVPVICollector/src/idleuhvpvicollector.cpp \
    UHVPVICollector/src/uhvpvicollector.cpp \
    UHVPVICollector/src/uhvpvicollectordb.cpp \
    UHVPVICollector/src/wait4i.cpp \
    UHVPVICollector/src/wait4p.cpp \
    UHVPVICollector/src/wait4v.cpp \
    src/coordinateglobalsignals.cpp \
    src/directtransitionforsmallcoordinatorstate.cpp \
    src/smallcoordinator.cpp \
    src/smallcoordinatordb.cpp \
    src/wait4errorhandler4smallcoordinator.cpp \
    src/wait4readyworkers.cpp

HEADERS += \
        mainwindow.h \
    anLogger/src/anlogger.h \
    shared/commonthings.h \
    BinaryProtocol/src/binaryprotocol.h \
    CanProtocol/src/canprotocol.h \
    WindowProtocol/src/windowprotocol.h \
    piLocalDBWorker/src/connectdatabase.h \
    piLocalDBWorker/src/directtransition4pilocaldbworkerstate.h \
    piLocalDBWorker/src/pilocaldbworker.h \
    piLocalDBWorker/src/pilocaldbworkervarset.h \
    piLocalDBWorker/src/setissentcolumnonlocaldatabase.h \
    piLocalDBWorker/src/updatelocaldatabase.h \
    piLocalDBWorker/src/updateonlinedatabase.h \
    piLocalDBWorker/src/wait4errorhandler4pilocaldbworker.h \
    SerialPortWorker/src/connectserialport.h \
    SerialPortWorker/src/directtransition4serialportworkerstate.h \
    SerialPortWorker/src/readbytes.h \
    SerialPortWorker/src/requestserialportinfo.h \
    SerialPortWorker/src/serialportworker.h \
    SerialPortWorker/src/serialportworkerproperty.h \
    SerialPortWorker/src/validateserialportinfo.h \
    SerialPortWorker/src/wait4errorhandler4serialportworker.h \
    SerialPortWorker/src/writebytes.h \
    UHVPVICollector/src/directtransitionforuhvpvicollectorstate.h \
    UHVPVICollector/src/emitreadi.h \
    UHVPVICollector/src/emitreadp.h \
    UHVPVICollector/src/emitreadv.h \
    UHVPVICollector/src/idleuhvpvicollector.h \
    UHVPVICollector/src/uhvpvicollector.h \
    UHVPVICollector/src/uhvpvicollectordb.h \
    UHVPVICollector/src/wait4i.h \
    UHVPVICollector/src/wait4p.h \
    UHVPVICollector/src/wait4v.h \
    src/coordinateglobalsignals.h \
    src/directtransitionforsmallcoordinatorstate.h \
    src/smallcoordinator.h \
    src/smallcoordinatordb.h \
    src/wait4errorhandler4smallcoordinator.h \
    src/wait4readyworkers.h

FORMS += \
        mainwindow.ui
