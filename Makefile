#
# Makefile
# Shlomi Fish, 2018-10-08 16:55
#

all: html pdf

SRC = README.asciidoc
OUT_base = writing-the-perfect-question

DOCBOOK5 = $(OUT_base).docbook5.xml
PDF = $(OUT_base).pdf
XHTML = $(OUT_base).xhtml

html: $(XHTML)

$(XHTML): $(SRC)
	asciidoctor --backend=xhtml5 -o $@ $<

$(DOCBOOK5): $(SRC)
	asciidoctor --backend=docbook5 -o $@ $<

$(PDF): $(DOCBOOK5)
	docmake -o $@ pdf $<

pdf: $(PDF)

clean:
	rm -f $(DOCBOOK5) $(PDF) $(XHTML)

# vim:ft=make
#
