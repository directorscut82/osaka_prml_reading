INCLUDES = tex-macros.org
ORGS     = index.org \
           ex_01_01-10.org \
           ex_01_11-20.org \
           ex_01_21-30.org \
           ex_01_31-41.org \
           ex_02_01-10.org \
           ex_02_11-20.org \
           ex_02_21-30.org \
           ex_02_31-40.org \
           ex_02_41-50.org \
           ex_02_51-61.org
HTMLS    = $(patsubst %.org, %.html, $(ORGS))

all: $(HTMLS)

%.html: %.org
	emacs $< --batch -f org-html-export-to-html --kill

$(ORGS): $(INCLUDES)

clean:
	rm -f $(HTMLS)
