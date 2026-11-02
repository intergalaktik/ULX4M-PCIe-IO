#!/bin/bash
# ULX4M-PCIe-IO panel (KiKit, KiCad 10) - plain KiKit, no plugins.
#
# Rails left/right (like ULX5M-M2 "lr"), 2 fixed 5 mm tabs on each side edge
# (KiKit puts them at 1/3 and 2/3 of the edge; hcount = tabs on left/right edges).
# No rail and no tab on the top/bottom edges: the gold fingers (J2) stay clean
# for bevel and plating (order "gold fingers + bevel" at JLC).
# Rail space is 5 mm: SFP cages J3/J4 and jacks J9/J10 overhang the bracket
# edge by up to 3.8 mm.
#
# KIKIT can point to a local kikit instead of docker, e.g.
#   KIKIT=kikit REPO=$PWD bash create_panel_KiKit_docker.sh

REPO=${REPO:-/home/goran/projects/ULX4M-PCIe-IO}
KIKIT=${KIKIT:-"docker run -it --rm -v $REPO:/kikit -w /kikit yaqwsx/kikit:nightly-v10"}

cd "$REPO" || exit 1
mkdir -p panel
$KIKIT panelize \
                --source    'tolerance: 0.2mm;'                    \
                --layout    'grid; rows: 1; cols: 1; space: 2mm;' \
                --tabs      'fixed; width: 5mm; hcount: 2; vcount: 0;' \
                --cuts      'vcuts;'                              \
                --framing   'railslr; width: 6mm; space: 5mm;'    \
                --copperfill 'solid;'                             \
                --post      'millradius: 1mm;'                    \
                --fiducials '3fid; hoffset: 3mm; voffset: 10mm; coppersize: 2mm; opening: 2.5mm;' \
                --tooling   '4hole; hoffset: 3mm; voffset: 3mm; size: 3.2mm;' \
                --text      'simple; text: Intergalaktik d.o.o. ULX4M-PCIe-IO; anchor: ml; hoffset: 3mm; voffset: 0mm; orientation: 90deg; width: 1.2mm; height: 1.2mm; thickness: 0.25mm; hjustify: center; vjustify: center;' \
                --text2     'simple; text: Created on {date}; anchor: mr; hoffset: -3mm; voffset: 0mm; orientation: 90deg; width: 1.2mm; height: 1.2mm; thickness: 0.25mm; hjustify: center; vjustify: center;' \
                --post 'millradius: 0.5mm;' \
kicad/ULX4M-PCIe-IO_x4_half.kicad_pcb panel/ULX4M-PCIe-IO_panel.kicad_pcb
