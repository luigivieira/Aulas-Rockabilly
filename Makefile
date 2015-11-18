TEX         = pdflatex
ALL         = m1d1 m1d1-cd m2d1
OUTPUT_DIR  = output
TEXMFOUTPUT = $(OUTPUT_DIR)

# Definition of basic commands according to the operating system.
$(info Target platform: $(OS))
ifeq ($(OS),Windows_NT)
	RM=del /s/q
	MD=mkdir
	SEP=\\
	CP=copy
else
	RM=rm -rf
	MD=mkdir -p
	SEP=/
	CP=cp
endif

all: $(ALL)
	
%: %.tex
ifeq ($(OS),Windows_NT)
	if not exist $(OUTPUT_DIR) $(MD) $(OUTPUT_DIR)
else
	$(MD) $(OUTPUT_DIR)
endif
	$(TEX) -output-directory $(OUTPUT_DIR) $<
    
clean:
	$(RM) $(OUTPUT_DIR)$(SEP)*.aux  $(OUTPUT_DIR)$(SEP)*.log\
    $(OUTPUT_DIR)$(SEP)*.toc $(OUTPUT_DIR)$(SEP)*.out\
    $(OUTPUT_DIR)$(SEP)*.blg $(OUTPUT_DIR)$(SEP)*.bbl\
    $(OUTPUT_DIR)$(SEP)*.nav $(OUTPUT_DIR)$(SEP)*.snm

clean_all: clean
	$(RM) $(OUTPUT_DIR)$(SEP)*.pdf