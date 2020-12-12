#include <QGridLayout>
#include <QPushButton>
#include <QString>
#include "SoundManager/SoundPlayer.h"

#ifndef SOUNDBOARD_H
#define SOUNDBOARD_H

/**
 * Soundboard class manage the sound buttons and
 * sound playing function signal for each of the button
*/
class Soundboard {
  private:
    const static int btnCount = 34;
    const QString soundName[btnCount] = {
        "あっあっあっ", "あんあん～", "バーーーン", "カンカン．．．","くしゃみ 1", "くしゃみ 2", "くしゃみ 3", "くしゃみ 4",
        "くしゃみ 5", "くしゃみ 6", "くしゃみ 7", "くしゃみ 8", "くしゃみ 9", "起きろああ", "おにいーちゃん", "おにいちゃん",
        "おやすみなー", "おやすみなーさい", "おやすみなさい", "おっと", "晚安", "晚安～～", "わんわん～", "ユメノシオリだよ！", "ユメ入り", "ユメ入りいい",
        "ユメ堕つー", "ユメ堕つっ", "ユ～", "連打！", "フルコンボだドン", "Great!", "Excellent!", "Excellent 2"
    };
    
    SoundPlayer player;
    QGridLayout btnBoard;
    QPushButton soundBtn[btnCount];

  public:
    Soundboard();
    QGridLayout &getSoundboard();

  private:
    void btnPressed(int btnId);
};

#endif /* SOUNDBOARD_H */