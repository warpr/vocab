TTL=text/turtle
TTL2=application/x-turtle
JSONLD=application/ld+json
RDF=application/rdf+xml
N3=text/rdf+n3
NTRIPLES=text/plain

CURL=curl --progress-bar --location

RAPPER=rapper

.PHONY: all

all: cc.ttl frbr.ttl foaf.ttl dc.ttl dc-old.ttl dctype.ttl mo.ttl rdf.ttl rdfs.ttl schema.ttl dbpont.ttl prov.ttl

# vann.ttl:
# This used to be available at http://vocab.org/vann/.turtle , the
# internet archive has a copy at:
# https://web.archive.org/web/20140905173355/http://vocab.org/vann/.turtle

cc.ttl: | GNUmakefile
	$(RAPPER) -i rdfa 'http://creativecommons.org/ns#' -o turtle > cc.ttl

frbr.ttl: | GNUmakefile
	$(RAPPER) 'http://purl.org/vocab/frbr/frbr-core-20050810.rdf' -o turtle > frbr.ttl

foaf.ttl: | GNUmakefile
	$(RAPPER) 'http://xmlns.com/foaf/0.1/' -o turtle > foaf.ttl

dc.ttl: | GNUmakefile
	$(CURL) --header "Accept: $(TTL)" 'https://purl.org/dc/terms/' --output "$@"

dc-old.ttl: | GNUmakefile
	$(CURL) --header "Accept: $(TTL)" 'https://purl.org/dc/elements/1.1/' --output "$@"

dctype.ttl: | GNUmakefile
	$(CURL) --header "Accept: $(TTL)" 'http://purl.org/dc/dcmitype/' --output "$@"

mo.ttl: | GNUmakefile
	$(CURL) --header "Accept: $(TTL)" 'http://purl.org/ontology/mo/' --output "$@"

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

prov.ttl: | GNUmakefile
	$(CURL) --header "Accept: $(TTL)" 'https://www.w3.org/ns/prov#' --output "$@"

