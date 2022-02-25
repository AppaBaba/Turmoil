# Bifurcation diagram of the logistic map
# x{n+1}}=rx{n}(1-x{n})

from pylab import plot, show, figure, axis
from numpy import empty, linspace, random


# x and y data containers
xdc = []
ydc = []

# r range to plot
rmin = 2.9
rmax = 4
# number of samples to generate
samples = 5000
x=0.7

R = linspace(rmin,rmax,samples)


for r in R:
    # Collecting r componet into xdc data container
    xdc.append(r)
    # start with random value of x
    x = random.random()
    for n in range(500):
      x=(r*x)*(1-x)
    for l in range(500):
      x=(r*x)*(1-x)
    # Collecting x componet into ydc data container
    ydc.append(x)
    
ax = figure(facecolor = 'black').add_subplot()
ax.plot(xdc, ydc, color = 'red', ls='', marker=',')
axis('off')
show()
