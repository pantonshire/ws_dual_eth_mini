DTC := dtc

overlay_dir := overlay
overlay_bins := $(patsubst %.dts, %.dtbo, $(wildcard $(overlay_dir)/*.dts))

overlay: $(overlay_bins)

clean:
	$(RM) $(overlay_bins)

%.dtbo: %.dts
	$(DTC) -O dtb -o $@ $<

.PHONY: overlay clean

