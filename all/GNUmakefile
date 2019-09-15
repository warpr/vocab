
CURL=curl --progress-bar --location

.PHONY: all

all: dc.ttl rdf.ttl rdfs.ttl schema.ttl

dc.ttl: | GNUmakefile
	$(CURL) --header 'Accept: text/turtle' 'http://purl.org/dc/terms/' --output "$@"

rdf.ttl: | GNUmakefile
	$(CURL) 'http://www.w3.org/1999/02/22-rdf-syntax-ns#' --output "$@"

rdfs.ttl: | GNUmakefile
	$(CURL) 'http://www.w3.org/2000/01/rdf-schema#' --output "$@"

schema.ttl: | GNUmakefile
	$(CURL) 'http://schema.org/version/latest/all-layers.ttl' --output "$@"

