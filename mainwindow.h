#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QThread>
#include "UHVWorker/uhvworker.h"
#include "UHV2PVICollector/uhv2pvicollector.h"
#include "UHV4PVICollector/uhv4pvicollector.h"
#include "pilocaldbworker.h"
#include "smallcoordinator.h"

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT
public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private:
    Ui::MainWindow *ui;
};

#endif // MAINWINDOW_H
