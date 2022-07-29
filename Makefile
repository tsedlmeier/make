CFLAGS = `pkg-config --cflags opencv4`
LIBS = `pkg-config --libs opencv4` -lPocoUtil -lPocoFoundation
TARGET="Sample"

SRCS = src/sample.cpp # \ if adding more src

Release: $(SRCS)
	g++ $(CFLAGS) -std=c++17 -Wno-psabi -O3 -mfpu=neon -mfloat-abi=hard $? $(LIBS) -o $(SAMPLE) 

Debug: $(SRCS)
	g++ $(CFLAGS) -std=c++17 -g $? $(LIBS) -o $(SAMPLE)
