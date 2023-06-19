
#############################################
# adjust these, if needed
#############################################
export xplorPath=/usr/software/xplor-nih/bin/xplor
export procheckPath=/usr/software/PROCHECK/procheck_nmr.scr
export aqpcPath=/usr/software/AQUA/scripts/aqpc
export whatifPath=/usr/software/whatif/DO_WHATIF.COM
export dsspPath=/usr/bin/dssp
export convertPath=/usr/bin/convert
export ghostscriptPath=/usr/bin/gs
export ps2pdfPath=/usr/bin/ps2pdf14
export molmolPath=/usr/software/bin/molmol
export povrayPath=/usr/bin/povray
export talosPath=/usr/software/nmrpipe/com/talos+
export JAVA_HOME=/usr/bin/java #32-bit v1.6
#############################################
# No changes needed below this line.
#############################################
export CINGROOT=/usr/software/cing-nmrbox
export CYTHON=/usr/software/cing-nmrbox/dist/Cython
export PYMOL_PATH=/usr/software/pymol/pymol.sh

# Adding each component individually to PYTHONPATH
export CING_VARS=$CINGROOT/python
export CING_VARS=${CING_VARS}:$CYTHON
export CING_VARS=${CING_VARS}:$PYMOL_PATH/modules
export CING_VARS=${CING_VARS}:/usr/software/ccpnmr/ccpnmr2.4/python
export CING_VARS=${CING_VARS}:/usr/software/yasara/pym:/usr/software/yasara/plg

export PYTHONPATH=${CING_VARS}:${PYTHONPATH}

# Use -u to ensure messaging streams for stdout/stderr don't mingle (too much).
alias cing='python -u $CINGROOT/python/cing/main.py'
alias queen='python -u $CINGROOT/python/queen/main.py'
alias cyana2cing='python -u $CINGROOT/python/cyana2cing/cyana2cing.py'
alias refine='python -u $CINGROOT/python/Refine/refine.py'
alias cython='$CYTHON/bin/cython'

#WATTOS
export W=/usr/software/Wattos/bin/wattos.sh
export WATTOSHOME=/usr/software/Wattos/wattos_home

