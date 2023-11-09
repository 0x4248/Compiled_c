# Compiled C
# A collection of C programs that are compiled to assembly 
# code for understanding how C and assembly work.
# GitHub: https://wwww.github.com/lewisevans2007/Compiled_C
# Licence: GNU General Public Licence v3.0
# By: Lewis Evans

include config.mk

all: compile

compile:
	@$(PYTHON) tools/run_makefiles.py

clean:
	@rm -rf $(SRC)/*/*/build