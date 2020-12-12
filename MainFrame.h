#include <QPixmap>
#include <QLabel>
#include <QIcon>
#include <QVBoxLayout>
#include <QWidget>
#include <QGridLayout>
#include <vector>
#include "Soundboard.h"

#ifndef MAINFRAME_H
#define MAINFRAME_H

class MainFrame {
  private:
    QWidget mainFrame;
    QGridLayout btnBoard;
    QVBoxLayout vBox;
    QPixmap headPix;
    QLabel headImg;
    QIcon iconList;

    Soundboard soundBoard;

  public:
    MainFrame();

  private:
    void setupIconList();
};

#endif /* MAINFRAME_H */