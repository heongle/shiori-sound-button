#include "SoundPlayer.h"
#include <iostream>

/** 
 * SoundPlayer constructor
 * @param int btnCount | Total number of buttons
*/
SoundPlayer::SoundPlayer(int btnCount) : buffer(new sf::SoundBuffer[(std::size_t)btnCount]) {
    for (int i = 0; i < btnCount; ++i) {
        if (!buffer[i].loadFromMemory(sound_pointer[i], (std::size_t)sound_lenght_pointer[i])) {
            std::cerr << "Error opening Shiori Stream" << std::endl;
        }
    }
}

/**
 * Play audio
 * @param int soundID | index of audio
*/
void SoundPlayer::playBuiltInAudio(int soundID) {
    soundQ.push(sf::Sound(buffer[soundID]));
    soundQ.back().play();

    while (!soundQ.empty() && soundQ.front().getStatus() == soundQ.front().Stopped) {
        soundQ.pop();
    }
}