STRIP := strip

all: tree

tree: tree.S
	$(AS) $(ASFLAGS) -o $@.o $@.S
	$(LD) $(LDFLAGS) -o $@ $@.o
	$(STRIP) $@

clean:
	$(RM) $(wildcard *.o)
	$(RM) tree

.PHONY: all clean

