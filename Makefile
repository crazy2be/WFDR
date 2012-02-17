include $(GOROOT)/src/Make.inc

DIRS=\
pkg/util/dlog\
pkg/util/pipes\
pkg/util/paths\
pkg/util/fnotify\
pkg/util/template\
pkg/util/openid\
pkg/util/picasa\
pkg/util/pages\
pkg/util/moduled\
wfdr\
wfdr-daemon\
wfdr-cache-monitor\
wfdr-module-manager\
css-preprocessor\
tmpl-preprocessor\

all: install

clean.dirs: $(addsuffix .clean, $(DIRS))

install.dirs: $(addsuffix .install, $(DIRS))

%.clean:
	+cd $* && gomake clean
	
%.install:
	+cd $* && gomake install
	
clean: clean.dirs

install: install.dirs