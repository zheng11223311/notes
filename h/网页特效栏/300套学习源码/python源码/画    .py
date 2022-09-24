import turtle
from random import randint

turtle.shape("turtle")
turtle.colormode(255)
turtle.pensize(5)
turtle.bgcolor("white")
turtle.tracer(False)

for i in range(600):
        turtle.color(randint(0,255),
        randint(0,255),randint(0,255))
        turtle.circle(1*(1+i),50)
        turtle.speed(3)
        turtle.tracer(True)
