%parametros
int: prodBici = 200;
int: prodTric = 140;
int: benBici = 25;
int: benTric = 30;
int: maxhoras = 40;

%variables
var 0..6000: v_bici;
var 0..4000: v_tric;
var int: beneficio; 
constraint v_bici*prodBici + v_tric*prodTric <= (prodBici * prodTric)*maxhoras;
constraint beneficio = benBici*v_bici + prodTric*v_tric;
solve maximize beneficio;