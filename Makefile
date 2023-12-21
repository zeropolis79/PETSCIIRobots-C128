ACME=acme

PROGS	= boot-128 common-128 sprites-128

all: $(PROGS)

boot-128: boot.asm
	$(ACME) $<

common-128: common.asm
	$(ACME) $<

sprites-128: sprites.asm
	$(ACME) $<

boot.asm: loader.sym
common.asm: faces.sym game0.sym game1.sym
game0.asm: graphics.sym
loader.sym: intro.sym loader.asm 

%.sym: %.asm
	$(ACME) $< || rm $@

clean:
	rm -f *.sym boot-128 common-128 faces-128 game0-128 game1-128 \
		graphics-128 intro-128 loader-128 sprites-128 

check: all
	@echo "Verifying checksums....(you should look for errors below)"
	@./checksum.sh

