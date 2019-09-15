TTL=text/turtle
TTL2=application/x-turtle
JSONLD=application/ld+json
RDF=application/rdf+xml
N3=text/rdf+n3
NTRIPLES=text/plain

CURL=curl --progress-bar --location

RAPPER=rapper

.PHONY: all

all: foaf.ttl dc.ttl rdf.ttl rdfs.ttl schema.ttl dbpont.ttl

foaf.ttl: | GNUmakefile
	$(CURL) --header "Accept: $(RDF)" 'http://xmlns.com/foaf/0.1/' --output "foaf.rdf"
	$(RAPPER) foaf.rdf -o turtle > foaf.ttl
	$(RM) foaf.rdf

dc.ttl: | GNUmakefile
	$(CURL) --header "Accept: $(TTL)" 'https://purl.org/dc/terms/' --output "$@"

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


