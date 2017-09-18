#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    UHVWorker * uhv2worker = new UHVWorker();
    uhv2worker->setObjectName("uhv2worker");
    UHVWorker * uhv4worker = new UHVWorker();
    uhv4worker->setObjectName("uhv4worker");
    UHVPVICollector * uhv2pvicollector = new UHVPVICollector(true);
    uhv2pvicollector->setObjectName("uhv2pvicollector");
    UHVPVICollector * uhv4pvicollector = new UHVPVICollector(false);
    uhv4pvicollector->setObjectName("uhv4pvicollector");
    piLocalDBWorker * piLocalDatabase = new piLocalDBWorker();
    piLocalDatabase->setObjectName("piLocalDatabase");
    SmallCoordinator * smallcoordinator = new SmallCoordinator();
    smallcoordinator->setObjectName("smallcoordinator");

    QThread * uhv2workerThread = new QThread();
    QThread * uhv4workerThread = new QThread();
    QThread * uhv2pvicollectorThread = new QThread();
    QThread * uhv4pvicollectorThread = new QThread();
    QThread * piLocalDatabaseThread = new QThread();
    QThread * smallcoordinatorThread = new QThread();

    uhv2worker->moveToThread(uhv2workerThread);
    uhv4worker->moveToThread(uhv4workerThread);
    uhv2pvicollector->moveToThread(uhv2pvicollectorThread);
    uhv4pvicollector->moveToThread(uhv4pvicollectorThread);
    piLocalDatabase->moveToThread(piLocalDatabaseThread);
    smallcoordinator->moveToThread(smallcoordinatorThread);

    QObject::connect(uhv2workerThread, &QThread::started, uhv2worker, &UHVWorker::start);
    QObject::connect(uhv4workerThread, &QThread::started, uhv4worker, &UHVWorker::start);
    QObject::connect(uhv2pvicollectorThread, &QThread::started, uhv2pvicollector, &UHVPVICollector::start);
    QObject::connect(uhv4pvicollectorThread, &QThread::started, uhv4pvicollector, &UHVPVICollector::start);
    QObject::connect(piLocalDatabaseThread, &QThread::started, piLocalDatabase, &piLocalDBWorker::start);

    QObject::connect(smallcoordinatorThread, &QThread::started, smallcoordinator, &SmallCoordinator::start);
    QObject::connect(smallcoordinatorThread, &QThread::started, this, [&](){anAck("Small Coordinator Thread Is Started !");});

    QObject::connect(smallcoordinator, &SmallCoordinator::started, smallcoordinator, &SmallCoordinator::distributeGlobalSignals);
    QObject::connect(smallcoordinator, &SmallCoordinator::started, [&](){
        anAck("Small Coordinator Is Started !");
        uhv2workerThread->start();
        uhv4workerThread->start();
    });

//    QObject::connect(uhv2worker, &UHVWorker::started, [&](){
//        anAck("uhv2worker is started !");
//        piLocalDatabaseThread->start();
//        uhv2pvicollectorThread->start();
//    });
//    QObject::connect(uhv4worker, &UHVWorker::started, [&](){
//        uhv4pvicollectorThread->start();
//    });

    anError("GATE b69023486b0");
    smallcoordinatorThread->start();
    anError("GATE ,g90qa4jm0g92");

}

MainWindow::~MainWindow()
{
    delete ui;
}
