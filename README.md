## Setup
### Fan device tree overlay
1. Compile with `make overlay`
2. Copy the compiled `.dtbo` to `/boot/overlays/`
3. Apply the overlay in `/boot/config.txt` with `dtoverlay=ws_de_mini_pwmfan`

