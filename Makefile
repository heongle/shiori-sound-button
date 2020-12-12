SOURCE_CPP	= main.cpp MainFrame.cpp Soundboard.cpp SoundManager/SoundPlayer.cpp resources/se_pointer.cpp resources/qt/soundBoardRes.cpp \
			  resources/se/aaa.cpp resources/se/angang.cpp resources/se/ban.cpp resources/se/kankan.cpp resources/se/kushami1.cpp resources/se/kushami2.cpp \
			  resources/se/kushami3.cpp resources/se/kushami4.cpp resources/se/kushami5.cpp resources/se/kushami6.cpp \
			  resources/se/kushami7.cpp resources/se/kushami8.cpp resources/se/kushami9.cpp resources/se/okiroa.cpp resources/se/oniichan_long.cpp \
			  resources/se/oniichan_short.cpp resources/se/oyasumina.cpp resources/se/oyasuminasai_long.cpp resources/se/oyasuminasai_short.cpp resources/se/otto.cpp \
			  resources/se/wanan.cpp resources/se/wanaaan.cpp resources/se/wanwang.cpp resources/se/yumenoshioridayo.cpp resources/se/yumeiri.cpp \
			  resources/se/yumeiriii.cpp resources/se/yumeotsu_long.cpp resources/se/yumeotsu_short.cpp resources/se/yuu.cpp \
			  resources/se/renda.cpp resources/se/furukonnbodadon.cpp resources/se/shiori_great.cpp resources/se/shiori_excellent.cpp resources/se/shiori_excellent2.cpp
SOURCE_RC	= icon/shiori_icon.rc
OBJS	= $(addprefix _obj/, $(notdir $(SOURCE_CPP:.cpp=.o)) $(notdir $(SOURCE_RC:.rc=.o)))
OUT	= _bin/Shiori_Sound_Button.exe
CC	 = g++
FLAGS	 = -Wall -O2 -std=c++17
WINFLAGS = -mwindows
NOLINK	= -c
QT5WIDGET	= $(shell pkg-config Qt5Widgets --cflags)
QT5WIDGET_LINKER	= $(shell pkg-config Qt5Widgets --libs)
SFML_AUDIO	= $(shell pkg-config sfml-audio --cflags)
SFML_AUDIO_LINKER	= $(shell pkg-config sfml-audio --libs)

# Main CPP files
all: $(OBJS)
	$(CC) $(FLAGS) $(WINFLAGS) $(OBJS) -o $(OUT) $(QT5WIDGET) $(QT5WIDGET_LINKER) $(SFML_AUDIO) $(SFML_AUDIO_LINKER)

_obj/main.o: main.cpp
	$(CC) $(NOLINK) $(FLAGS) main.cpp $(QT5WIDGET) -o _obj/main.o

_obj/MainFrame.o: MainFrame.cpp
	$(CC) $(NOLINK) $(FLAGS) MainFrame.cpp $(QT5WIDGET) $(SFML_AUDIO) -o _obj/MainFrame.o

_obj/Soundboard.o: Soundboard.cpp
	$(CC) $(NOLINK) $(FLAGS) Soundboard.cpp $(QT5WIDGET) $(SFML_AUDIO) -o _obj/Soundboard.o

_obj/SoundPlayer.o: SoundManager/SoundPlayer.cpp
	$(CC) $(NOLINK) $(FLAGS) SoundManager/SoundPlayer.cpp $(QT5WIDGET) $(SFML_AUDIO) -o _obj/SoundPlayer.o

_obj/se_pointer.o: resources/se_pointer.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se_pointer.cpp $(QT5WIDGET) $(SFML_AUDIO) -o _obj/se_pointer.o

# QT Resources file
_obj/soundBoardRes.o: resources/qt/soundBoardRes.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/qt/soundBoardRes.cpp $(QT5WIDGET) $(SFML_AUDIO) -o _obj/soundBoardRes.o

# Icon RC files
_obj/shiori_icon.o: icon/shiori_icon.rc
	windres -i icon\\shiori_icon.rc -o _obj\\shiori_icon.o

# Resource CPP files
_obj/aaa.o: resources/se/aaa.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/aaa.cpp -o _obj/aaa.o

_obj/angang.o: resources/se/angang.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/angang.cpp -o _obj/angang.o

_obj/ban.o: resources/se/ban.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/ban.cpp -o _obj/ban.o

_obj/kankan.o: resources/se/kankan.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/kankan.cpp -o _obj/kankan.o

_obj/kushami1.o: resources/se/kushami1.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/kushami1.cpp -o _obj/kushami1.o

_obj/kushami2.o: resources/se/kushami2.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/kushami2.cpp -o _obj/kushami2.o

_obj/kushami3.o: resources/se/kushami3.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/kushami3.cpp -o _obj/kushami3.o

_obj/kushami4.o: resources/se/kushami4.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/kushami4.cpp -o _obj/kushami4.o

_obj/kushami5.o: resources/se/kushami5.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/kushami5.cpp -o _obj/kushami5.o

_obj/kushami6.o: resources/se/kushami6.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/kushami6.cpp -o _obj/kushami6.o

_obj/kushami7.o: resources/se/kushami7.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/kushami7.cpp -o _obj/kushami7.o

_obj/kushami8.o: resources/se/kushami8.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/kushami8.cpp -o _obj/kushami8.o

_obj/kushami9.o: resources/se/kushami9.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/kushami9.cpp -o _obj/kushami9.o

_obj/okiroa.o: resources/se/okiroa.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/okiroa.cpp -o _obj/okiroa.o

_obj/oniichan_long.o: resources/se/oniichan_long.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/oniichan_long.cpp -o _obj/oniichan_long.o

_obj/oniichan_short.o: resources/se/oniichan_short.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/oniichan_short.cpp -o _obj/oniichan_short.o

_obj/oyasumina.o: resources/se/oyasumina.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/oyasumina.cpp -o _obj/oyasumina.o

_obj/oyasuminasai_long.o: resources/se/oyasuminasai_long.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/oyasuminasai_long.cpp -o _obj/oyasuminasai_long.o

_obj/oyasuminasai_short.o: resources/se/oyasuminasai_short.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/oyasuminasai_short.cpp -o _obj/oyasuminasai_short.o

_obj/otto.o: resources/se/otto.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/otto.cpp -o _obj/otto.o

_obj/wanan.o: resources/se/wanan.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/wanan.cpp -o _obj/wanan.o

_obj/wanaaan.o: resources/se/wanaaan.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/wanaaan.cpp -o _obj/wanaaan.o

_obj/wanwang.o: resources/se/wanwang.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/wanwang.cpp -o _obj/wanwang.o

_obj/yumenoshioridayo.o: resources/se/yumenoshioridayo.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/yumenoshioridayo.cpp -o _obj/yumenoshioridayo.o

_obj/yumeiri.o: resources/se/yumeiri.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/yumeiri.cpp -o _obj/yumeiri.o

_obj/yumeiriii.o: resources/se/yumeiriii.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/yumeiriii.cpp -o _obj/yumeiriii.o

_obj/yumeotsu_long.o: resources/se/yumeotsu_long.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/yumeotsu_long.cpp -o _obj/yumeotsu_long.o

_obj/yumeotsu_short.o: resources/se/yumeotsu_short.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/yumeotsu_short.cpp -o _obj/yumeotsu_short.o

_obj/yuu.o: resources/se/yuu.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/yuu.cpp -o _obj/yuu.o

_obj/renda.o: resources/se/renda.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/renda.cpp -o _obj/renda.o

_obj/furukonnbodadon.o: resources/se/furukonnbodadon.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/furukonnbodadon.cpp -o _obj/furukonnbodadon.o

_obj/shiori_great.o: resources/se/shiori_great.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/shiori_great.cpp -o _obj/shiori_great.o

_obj/shiori_excellent.o: resources/se/shiori_excellent.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/shiori_excellent.cpp -o _obj/shiori_excellent.o

_obj/shiori_excellent2.o: resources/se/shiori_excellent2.cpp
	$(CC) $(NOLINK) $(FLAGS) resources/se/shiori_excellent2.cpp -o _obj/shiori_excellent2.o

# Clean
clean:
	DEL /Q /F /S "*.o"