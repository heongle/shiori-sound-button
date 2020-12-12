#include "../resources/se_pointer.h"
#include <SFML/Audio.hpp>
#include <queue>

#ifndef SOUNDPLAYER_H
#define SOUNDPLAYER_H
/*
 * Audio control for buttons
 * Using array in SoundList.hpp to generate
 * and load every sound into memory for playing
*/
class SoundPlayer {
  private:
    std::queue<sf::Sound> soundQ;
    std::unique_ptr<sf::SoundBuffer[]> buffer;

  public:
    SoundPlayer(int btnCount);
    void playBuiltInAudio(int soundID);
};

#endif /* SOUNDPLAYER_H */