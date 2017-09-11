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
    UHV2PVICollector * uhv2pvicollector = new UHV2PVICollector();
    uhv2pvicollector->setObjectName("uhv2pvicollector");
    UHV4PVICollector * uhv4pvicollector = new UHV4PVICollector();
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
    QObject::connect(uhv2pvicollectorThread, &QThread::started, uhv2pvicollector, &UHV2PVICollector::start);
    QObject::connect(uhv4pvicollectorThread, &QThread::started, uhv4pvicollector, &UHV4PVICollector::start);
    QObject::connect(piLocalDatabaseThread, &QThread::started, piLocalDatabase, &piLocalDBWorker::start);
    QObject::connect(smallcoordinatorThread, &QThread::started, smallcoordinator, &SmallCoordinator::start);

    QObject::connect(smallcoordinator, &SmallCoordinator::started, [&](){
        uhv2workerThread->start();
        uhv4workerThread->start();
    });
    bool isUHV2WorkerStarted = false;
    bool isUHV4WorkerStarted = false;
    QObject::connect(uhv2worker, &UHVWorker::started, [&](){isUHV2WorkerStarted=true;});
    QObject::connect(uhv4worker, &UHVWorker::started, [&](){isUHV4WorkerStarted=true;});
    while (!(isUHV2WorkerStarted && isUHV4WorkerStarted))
    {
        qApp->processEvents();
    };
    piLocalDatabaseThread->start();
    uhv2pvicollectorThread->start();
    uhv4pvicollectorThread->start();
}

MainWindow::~MainWindow()
{
    delete ui;
}
