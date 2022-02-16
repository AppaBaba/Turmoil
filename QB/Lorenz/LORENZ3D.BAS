h = 0.01
X = 0.6
Y = 0.6
Z = 0.6

REM Alpha or Prandtl(Pr)
REM quotient of viscosity and thermal conductivity
Pr = 10

REM Roe or Rayleigh(Ra)
REM temperature difference of the heated layer
Ra = 28

REM Beta or Physical Dimensions of Cell
B = 8 / 3


npts = 4000
SCREEN 12
WINDOW (-25, -60)-(25, 60)


FOR i = 1 TO npts

    Xn = X + h * Pr * (Y - X)
    Yn = Y + h * ((-X * Z) + Ra * X - Y)
    Zn = Z + h * (X * Y - B * Z)
    X = Xn
    Y = Yn
    Z = Zn
    Xs = X * 31 / Z
    Ys = Y * 31 / Z


    PSET (Xs, Ys), 5

NEXT i

