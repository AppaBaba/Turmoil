h = 0.01
X = 0.6
Y = 0.6
Z = 0.6

Alpha = 10
Roe = 28
Beta = 8 / 3

npts = 4000

SCREEN 12
WINDOW (-25, -60)-(25, 60)


FOR i = 1 TO npts

    Xn = X + h * Alpha * (Y - X)
    Yn = Y + h * ((-X * Z) + Roe * X - Y)
    Zn = Z + h * (X * Y - Beta * Z)
    X = Xn
    Y = Yn
    Z = Zn

    PSET (X, Y), 5

NEXT i

