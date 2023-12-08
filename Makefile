.PHONY: test

build:
	dune build

test:
	OCAMLRUNPARAM=b dune exec test/test.exe

mtd:
	OCAMLRUNPARAM=b dune exec bin/main.exe

doc:
	dune build @doc

opendoc: doc
	@bash opendoc.sh