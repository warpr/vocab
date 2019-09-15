#!/bin/sh

git clone --depth=1 https://git.code.sf.net/p/oscaf/shared-desktop-ontologies oscaf-shared-desktop-ontologies

rapper -i trig ./oscaf-shared-desktop-ontologies/tmo/tmo.trig.in -o turtle > tmo.ttl
rapper -i trig ./oscaf-shared-desktop-ontologies/nfo/nfo.trig.in -o turtle > nfo.ttl
rapper -i trig ./oscaf-shared-desktop-ontologies/nao/nao.trig.in -o turtle > nao.ttl
rapper -i trig ./oscaf-shared-desktop-ontologies/nmm/nmm.trig.in -o turtle > nmm.ttl
rapper -i trig ./oscaf-shared-desktop-ontologies/ndo/ndo.trig.in -o turtle > ndo.ttl
rapper -i trig ./oscaf-shared-desktop-ontologies/nuao/nuao.trig.in -o turtle > nuao.ttl
rapper -i trig ./oscaf-shared-desktop-ontologies/nie/nie.trig.in -o turtle > nie.ttl
rapper -i trig ./oscaf-shared-desktop-ontologies/nso/nso.trig.in -o turtle > nso.ttl
rapper -i trig ./oscaf-shared-desktop-ontologies/nco/nco.trig.in -o turtle > nco.ttl
rapper -i trig ./oscaf-shared-desktop-ontologies/nid3/nid3.trig.in -o turtle > nid3.ttl
rapper -i trig ./oscaf-shared-desktop-ontologies/nrl/nrl.trig.in -o turtle > nrl.ttl
rapper -i trig ./oscaf-shared-desktop-ontologies/nmo/nmo.trig.in -o turtle > nmo.ttl
rapper -i trig ./oscaf-shared-desktop-ontologies/nexif/nexif.trig.in -o turtle > nexif.ttl
rapper -i trig ./oscaf-shared-desktop-ontologies/pimo/pimo.trig.in -o turtle > pimo.ttl
rapper -i trig ./oscaf-shared-desktop-ontologies/ncal/ncal.trig.in -o turtle > ncal.ttl

