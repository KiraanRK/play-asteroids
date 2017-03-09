tft.init(tft.ILI9341, tft.PORTRAIT_FLIP);
tft.setfont("/@font/SmallFont.fon")
tft.clear();
tft.setcolor(tft.GREEN);

tft.write(tft.CENTER, 2, "Play!");

maxx, maxy = tft.getscreensize();

tft.setclipwin(0, tft.getfontheight() + 5, maxx, maxy);

require('play/play');
require('games/asteroids');

asteroids.start();