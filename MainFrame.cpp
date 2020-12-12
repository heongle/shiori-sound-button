#include "MainFrame.h"

MainFrame::MainFrame() {
    // Set title
    mainFrame.setWindowTitle("Shiori Sound Button");

    // Set alignment of vBox to center align
    vBox.setAlignment(Qt::AlignCenter);
    
    // Setup icon list to main window
    setupIconList();
    mainFrame.setWindowIcon(iconList);

    // Set Header Img
    headPix.load(":/img/shiori_header.png");
    headImg.setPixmap(headPix.scaledToWidth((int)(headPix.width() * 0.65), Qt::SmoothTransformation));

    // Add Widget
    vBox.addWidget(&headImg);

    // Add soundboard layout into vBox
    vBox.addLayout(&soundBoard.getSoundboard());

    // Set mainFrame layout using vBox
    mainFrame.setLayout(&vBox);

    // Show the Main Window after all widgets and layouts were set
    mainFrame.show();
}

void MainFrame::setupIconList() {
    // Load resources into iconlist
    iconList.addFile(":/img/icon/shiori_icon_16.png");
    iconList.addFile(":/img/icon/shiori_icon_32.png");
    iconList.addFile(":/img/icon/shiori_icon_64.png");
    iconList.addFile(":/img/icon/shiori_icon_128.png");
    iconList.addFile(":/img/icon/shiori_icon_256.png");
    iconList.addFile(":/img/icon/shiori_icon_512.png");
}