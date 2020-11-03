ifneq ($(CLANG), 1)
  WARNINGS      = -Werror -Wall -Wextra
  CXX           = g++
  LD            = $(CXX)
else
  WARNINGS      = -Weverything
  CXX           = clang++
  LD            = clang++
endif

ifeq ($(PLATFORM), linux64)
  CXXFLAGS = -m64 $(WARNINGS)
  LDFLAGS  = -m64
else
  ifeq ($(PLATFORM), linux32)
    CXXFLAGS = -m32 $(WARNINGS)
    LDFLAGS  = -m32
  endif
endif

TARGET_NAME = unportable_case_1
TARGET_PREFIX = $(CXX)_$(PLATFORM)
TARGET = $(TARGET_PREFIX)_$(TARGET_NAME)

SRC_DIR := src
OBJ_DIR := obj

SOURCES := $(wildcard $(SRC_DIR)/*.cpp)
HEADERS := $(wildcard $(SRC_DIR)/*.h)

_OBJS := $(SOURCES:$(SRC_DIR)/%.cpp=%.o)
OBJS  := $(sort $(patsubst %,$(OBJ_DIR)/%, $(_OBJS)))

$(TARGET): $(OBJS)
	$(LD) -o $(TARGET) $(OBJS) $(LDFLAGS)

$(shell mkdir -p $(OBJ_DIR))

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@
