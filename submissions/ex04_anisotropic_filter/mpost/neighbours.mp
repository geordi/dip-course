prologues := 2;
defaultfont:="cmr10";


verbatimtex
%&latex
\documentclass[18pt]{article}
\begin{document}
etex

%verbatimtex
%\magnification=\magstep5
%\font\large=cmr12
%etex

crossWidth := 3;
distanceFromCross := 6;
praveOdsazeniProCislo := 6;
%defaultscale := 10;

def drawit (suffix p)(expr pattern) =
    draw p dashed pattern withpen pencircle scaled 1;
    p := p shifted (0,-13);
enddef;

def drawCross (expr s) =
    z.P = s;
    draw (x.P - crossWidth, y.P)--(x.P + crossWidth, y.P) withpen pencircle scaled 1.5;
    draw (x.P, y.P - crossWidth)--(x.P, y.P + crossWidth) withpen pencircle scaled 1.5;
enddef;

def drawCrossTwo (expr x, y, scale) =
    draw (x - crossWidth, y)--(x + crossWidth, y) withpen pencircle scaled scale;
    draw (x, y - crossWidth)--(x, y + crossWidth) withpen pencircle scaled scale;
enddef;

def drawDimension(expr a, b) = 
    begingroup
    save arrowhead;
    vardef arrowhead expr p =
        save A,u; pair A,u;
        A := point length(p) of p;
        u := unitvector(direction length(p) of p);
        A -- (A - ahlength*u rotated 30) -- A --
        (A - ahlength*u rotated -30) -- cycle
    enddef;

    drawarrow a .. b;
    drawarrow b .. a;
    endgroup;
enddef;

def drawInverseDimension(expr a, b, c, d) = 
    begingroup
    save arrowhead;
    vardef arrowhead expr p =
        save A,u; pair A,u;
        A := point length(p) of p;
        u := unitvector(direction length(p) of p);
        A -- (A - ahlength*u rotated 30) -- A --
        (A - ahlength*u rotated -30) -- cycle
    enddef;

    drawarrow a .. b;
    drawarrow c .. d;

    endgroup;
enddef;

u := 1.1pt;

beginfig(1);
    %fill (0u,0u)--(100u,0u)--(100u,100u)--(0u,100u)--cycle withpen pencircle scaled 1 withcolor 0.8*white;

    radius := 4u;

    pair lcrossc, pcrossc;
    a_crossc_x := 50u;
    a_crossc_y := 50u;
    b_crossc_x := 50u;
    b_crossc_y := 50u;

    draw fullcircle scaled 8u shifted (50u, 50u);
    draw fullcircle scaled 8u shifted (50u, 95u);
    draw fullcircle scaled 8u shifted (50u, 5u);
    draw fullcircle scaled 8u shifted (5u, 50u);
    draw fullcircle scaled 8u shifted (95u, 50u);

    draw (5u+radius, 50u)--(50u-radius, 50u);
    draw (50u+radius, 50u)--(95u-radius, 50u);
    draw (50u, 5u+radius)--(50u, 50u-radius);
    draw (50u, 50u+radius)--(50u, 95u-radius);

    label(btex $I_{i,j}$ etex, (50u + 10u, 50u - 7u));
    label(btex $I_{i+1,j}$ etex, (95u + 15u, 50u - 7u));
    label(btex $I_{i-1,j}$ etex, (5u + 15u, 50u - 7u));
    label(btex $I_{i,j+1}$ etex, (50u + 15u, 5u - 7u));
    label(btex $I_{i,j-1}$ etex, (50u + 15u, 95u - 7u));

    label(btex $c_{E_{i+1,j}}$ etex, (75u, 55u));
    label(btex $c_{W_{i-1,j}}$ etex, (30u, 55u));
    label(btex $c_{S_{i,j+1}}$ etex, (50u + 15u, 20u));
    label(btex $c_{N_{i,j-1}}$ etex, (50u + 15u, 75u));

    label(btex $E$ etex, (95u, 60u));
    label(btex $W$ etex, (6u, 60u));
    label(btex $S$ etex, (50u - 10u, 5u));
    label(btex $N$ etex, (50u - 10u, 95u));

    %label(btex $q$ etex, (b_crossc_x - 1u, b_crossc_y - 7u));

    %draw (a_crossc_x, a_crossc_y)--(b_crossc_x, b_crossc_y) withpen pencircle scaled 0.6;
endfig;




verbatimtex
\end{document}
etex

end;

