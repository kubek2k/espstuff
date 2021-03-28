## Toolkit to deal with ESP8266 for esphome

### Installation

Clone the repo

```
git clone https://github.com/kubek2k/espstuff
```

Use direnv with similar config:
```
use_nix espstuff

export CALL_UP_DEVICE=/dev/cu.usbserial-XXX
export SERIAL_DEVICE=/dev/tty.usbserial-XXX

PATH_add ./espstuff/bin
```

### Usage 

To build image, use:
```
build_image.sh <yaml_file>
```

To upload image (the image is most likely stored in `<project>/.pioenvs/<project>/firmware.bin`):
```
upload_image.sh <firmware.bin>
```

To monitor serial port:
```
monitor_serial.sh
```
