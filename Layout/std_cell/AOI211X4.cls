*******************************************************************************
****** AOI211X4 schematic AOI211X4  <vs>  AOI211X4 layout AOI211X4
*******************************************************************************
                                                                                                                                                                                                                            
Pre-expand Statistics                      
======================                          Original       
Cell/Device                               schematic  layout
(g45n1svt) MOS                                    4      16*
(g45p1svt) MOS                                    4      16*
                                             ------  ------
Total                                             8      32

Reduce Statistics
=================                               Original             Reduced
Cell/Device                               schematic  layout   schematic  layout
(g45n1svt) MOS                                    4      16*          2       2
(g45p1svt) MOS                                    4      16*          0       0
(g45n1svt:SerMos2#1) MosBlk                       -       -           1       1
(g45p1svt:ParMos2#1) MosBlk                       -       -           1       1
(g45p1svt:SerMos4#1) MosBlk                       -       -           1       1

Match Statistics
================                                  Total             Unmatched
Cell/Device                               schematic  layout   schematic  layout
(g45n1svt) MOS                                    2       2           0       0
(g45p1svt) MOS                                    0       0           0       0
(g45n1svt:SerMos2#1) MosBlk                       1       1           0       0
(g45p1svt:ParMos2#1) MosBlk                       1       1           0       0
(g45p1svt:SerMos4#1) MosBlk                       1       1           0       0
                                             ------  ------      ------  ------
Total                                             5       5           0       0

Match Statistics for Nets                         8      10           0       2

=====================================================================[AOI211X4]
====== Bad Initial Net Bindings (nets don't match) ============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 1)
Schematic Net:  vdd
S      *1   of g45p1svt:ParMos2#1 TERM4
S       1   of g45p1svt:SerMos4#1 {OUT OUT2}
S      *1   of g45p1svt:SerMos4#1 TERM4

Layout Net:  vdd
L       1   of g45p1svt:SerMos4#1 {OUT OUT2}

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 2)
Schematic Net:  vss
S       2   of g45n1svt {D S}
S      *2   of g45n1svt B
S       1   of g45n1svt:SerMos2#1 {OUT OUT2}
S      *1   of g45n1svt:SerMos2#1 TERM4

Layout Net:  vss
L       2   of g45n1svt {D S}
L       1   of g45n1svt:SerMos2#1 {OUT OUT2}

=====================================================================[AOI211X4]
====== Unmatched Internal Nets ================================================
===============================================================================

L ?avS101
L ?avC14

=====================================================================[AOI211X4]
====== Suggested Terminal Rewire ==============================================
===============================================================================

In the layout, terminal 'TERM4' of instance I##35 probably should connect to 
net vdd instead of net avC14.
This makes a better match between layout net vdd and schematic net vdd.

In the layout, terminal 'TERM4' of instance I##34 probably should connect to 
net vdd instead of net avC14.
This makes a better match between layout net vdd and schematic net vdd.

In the layout, terminal 'TERM4' of instance I##33 probably should connect to 
net vss instead of net avS101.
This makes a better match between layout net vss and schematic net vss.

In the layout, terminal 'B' of instance avD2_9 probably should connect to net 
vss instead of net avS101.
This makes a better match between layout net vss and schematic net vss.

In the layout, terminal 'B' of instance avD2_10 probably should connect to net 
vss instead of net avS101.
This makes a better match between layout net vss and schematic net vss.


=====================================================================[AOI211X4]
====== Problem Schematic Nets (no exact match in layout) ======================
===============================================================================
S
S ?vdd
S       1   of g45p1svt:ParMos2#1 TERM4
S       1   of g45p1svt:SerMos4#1 {OUT OUT2}
S       1   of g45p1svt:SerMos4#1 TERM4
S
S ?vss
S       2   of g45n1svt {D S}
S       2   of g45n1svt B
S       1   of g45n1svt:SerMos2#1 {OUT OUT2}
S       1   of g45n1svt:SerMos2#1 TERM4

=====================================================================[AOI211X4]
====== Problem Layout Nets (no exact match in schematic) ======================
===============================================================================
L
L ?vdd
L       1   of g45p1svt:SerMos4#1 {OUT OUT2}
L
L ?vss
L       2   of g45n1svt {D S}
L       1   of g45n1svt:SerMos2#1 {OUT OUT2}
L
L ?avS101
L       2   of g45n1svt B
L       1   of g45n1svt:SerMos2#1 TERM4
L
L ?avC14
L       1   of g45p1svt:ParMos2#1 TERM4
L       1   of g45p1svt:SerMos4#1 TERM4

=====================================================================[AOI211X4]
====== Matched Instances with Bad Net Connections =============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 1)
Schematic Instance: NM2  g45n1svt
Layout Instance:    avD2_10  g45n1svt

Pin        SchNet                      : LayNet
---        ------                      : ------
B          vss                         : ?avS101

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 2)
Schematic Instance: NM3  g45n1svt
Layout Instance:    avD2_9  g45n1svt

Pin        SchNet                      : LayNet
---        ------                      : ------
B          vss                         : ?avS101

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 3)
Schematic Instance: I##9  g45n1svt:SerMos2#1
Layout Instance:    I##33  g45n1svt:SerMos2#1

Pin        SchNet                      : LayNet
---        ------                      : ------
TERM4      vss                         : ?avS101

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 4)
Schematic Instance: I##10  g45p1svt:ParMos2#1
Layout Instance:    I##34  g45p1svt:ParMos2#1

Pin        SchNet                      : LayNet
---        ------                      : ------
TERM4      vdd                         : ?avC14

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 5)
Schematic Instance: I##11  g45p1svt:SerMos4#1
Layout Instance:    I##35  g45p1svt:SerMos4#1

Pin        SchNet                      : LayNet
---        ------                      : ------
TERM4      vdd                         : ?avC14

=====================================================================[AOI211X4]
====== Summary of Errors ======================================================
===============================================================================

Schematic  Layout     Error Type
---------  ------     ----------
 2          2         Bad Initial Net Bindings
 -          5         Suggested Terminal Rewire
 -          2         Unmatched Internal Nets
 5          5         Matched Instances with Bad Net Connections

