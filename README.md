# Asteroids inspired game for for Play!


## Prerequisites

You need to have esp-idf development environment installed, and you need to have my esp32-play project successfully compiled, loaded, and running on your game console.

## Build

Building is quite easy, once you have your environment configured.

```
cp sdkconfig.example sdkconfig
make flashfs
```

TODO intead of being loaded onto the game console using spiffs, we should make  game loader in spiffs and write the games to the external SD card.

