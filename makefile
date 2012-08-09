src=$(wildcard *.hs)
stg=$(patsubst %.hs,%.stg,$(src) )
#asm=$(patsubst %.hs,%.asm,$(src) )
cmm=$(patsubst %.hs,%.cmm,$(src) )
ocmm=$(patsubst %.hs,%.ocmm,$(src) )
core=$(patsubst %.hs,%.core,$(src) )

all: $(stg) $(cmm) $(ocmm) $(core)

$(stg): %.stg: %.hs
	ghc -fforce-recomp -ddump-stg $< > $@
$(asm): %.asm: %.hs
	ghc -fforce-recomp -ddump-asm $< > $@
$(cmm): %.cmm: %.hs
	ghc -fforce-recomp -ddump-cmm $< > $@
$(ocmm): %.ocmm: %.hs
	ghc -fforce-recomp -ddump-opt-cmm $< > $@
$(core): %.core: %.hs
	ghc -fforce-recomp -ddump-simpl $< > $@
