//move

var teclaCima = keyboard_check(ord("W"));
var teclaBaixo = keyboard_check(ord("S"));
var teclaDireita = keyboard_check(ord("D"));
var teclaEsquerda = keyboard_check(ord("A"));

var teclaCheck = teclaDireita - teclaEsquerda !=0 || teclaBaixo - teclaCima !=0 ;

mcDirection = point_direction(0,0,teclaDireita - teclaEsquerda,teclaBaixo - teclaCima);

velh = lengthdir_x(mcSpeed * teclaCheck, mcDirection);
velv = lengthdir_y(mcSpeed * teclaCheck, mcDirection);

x += velh;
y += velv;

//interaction

