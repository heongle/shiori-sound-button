#include "Soundboard.h"
/**
 * Soundboard constructor.
 * Construct soundboard and initialize SoundPlayer player
*/
Soundboard::Soundboard() : player(btnCount) {
    for (int i = 0, row = 0, rowSize = 6; i < btnCount; ++i) {
        if ((i / rowSize) > row) {
            ++row;
        }
        soundBtn[i].setText(soundName[i]);
        soundBtn[i].setStyleSheet("padding: 12px; font-size: 12px;");
        btnBoard.addWidget(&soundBtn[i], row, i - (rowSize * row));
        QObject::connect(&soundBtn[i], &QPushButton::clicked, [this, i](){ btnPressed(i);});
    }
}

/** 
 * Return created soundboard layout
 * @return QGridLayout btnBoard
*/
QGridLayout &Soundboard::getSoundboard() {
    return btnBoard;
}

/** 
 * Function for QObject signal to call for each button click
 * @param int btnId | The sound id the button use to call the play audio function
*/
void Soundboard::btnPressed(int btnId){
    player.playBuiltInAudio(btnId);
}