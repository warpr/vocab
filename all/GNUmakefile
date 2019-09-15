
CURL=curl --progress-bar --location
RAPPER=rapper

.PHONY: all

all: dc.ttl rdf.ttl rdfs.ttl schema.ttl dbpont.ttl

dc.ttl: | GNUmakefile
	$(CURL) --header 'Accept: text/turtle' 'https://purl.org/dc/terms/' --output "$@"

rdf.ttl: | GNUmakefile
	$(CURL) 'https://www.w3.org/1999/02/22-rdf-syntax-ns#' --output "$@"

rdfs.ttl: | GNUmakefile
	$(CURL) 'https://www.w3.org/2000/01/rdf-schema#' --output "$@"

schema.ttl: | GNUmakefile
	$(CURL) 'https://schema.org/version/latest/all-layers.ttl' --output "$@"

dbpont.ttl: | GNUmakefile
	$(CURL) 'https://downloads.dbpedia.org/2014/dbpedia_2014.owl.bz2' --output "dbpedia_2014.owl.bz2"
	bunzip2 dbpedia_2014.owl.bz2
	$(RAPPER) dbpedia_2014.owl -o turtle > dbpont.ttl
	$(RM) dbpedia_2014.owl


