#
# Makefile
# Shlomi Fish, 2018-10-08 16:55
#

all: html pdf

SRC = README.asciidoc
OUT_base = writing-the-perfect-question

XHTML = $(OUT_base).xhtml

html: $(XHTML)

$(XHTML): $(SRC)
	asciidoctor --backend=xhtml5 -o $@ $<

pdf:

clean:
	rm -f $(XHTML)

# vim:ft=make
#
