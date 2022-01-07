all: mGB-pocket.pocket

%.2bpp: %.png
	rgbgfx -o $@ $<

%.1bpp: %.png
	rgbgfx -d 1 -o $@ $<

mGB-pocket.o: game.asm bank_*.asm
	rgbasm  -o mGB-pocket.o game.asm

mGB-pocket.pocket: mGB-pocket.o
	rgblink -n mGB-pocket.sym -m mGB-pocket.map -o $@ $<
	rgbfix -v -p 255 $@

	md5 $@

clean:
	rm -f mGB-pocket.o mGB-pocket.pocket mGB-pocket.sym mGB-pocket.map
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +