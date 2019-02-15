import subprocess
parametros = "colores = {rojo,verde,azul}; enlaces = 5; grafo = [{1,2}, {2,0},{2,3},{2,4},{0,4}]; numero_nodos = 5;"
s = subprocess.check_output(['minizinc', 'color_grafo.mzn', "-D", parametros])
print(s)