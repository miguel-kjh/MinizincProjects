#!/usr/bin/python3.6
import subprocess
import time

colores = "colores = 10; "
def solve_it(input_data):
    # Modify this code to run your optimization algorithm

    # parse the input
    lines = input_data.split('\n')

    first_line = lines[0].split()
    node_count = int(first_line[0])
    edge_count = int(first_line[1])


    edges = []
    for i in range(1, edge_count + 1):
        line = lines[i]
        parts = line.split()
        edges.append((int(parts[0]), int(parts[1])))

    grafo = "grafo = " + str(edges).replace("(","{").replace(")", "}") + "; "
    enlances = "enlaces = " + str(edge_count) + "; "
    nodos = "numero_nodos = " + str(node_count) + "; "
    parametros = colores + enlances + grafo + nodos
    st = time.time()
    s = subprocess.check_output(['minizinc', 'color_grafo.mzn', "-D", parametros])
    medida_tiempo = time.time() - st
    print("Tiempo " + str(medida_tiempo) + " segundos")
    import re
    return re.sub("[b'\-=n]","",str(s)).replace("\\","")


if __name__ == '__main__':
    import sys
    if len(sys.argv) > 1:
        file_location = sys.argv[1].strip()
        with open(file_location, 'r') as input_data_file:
            input_data = input_data_file.read()
        print(solve_it(input_data))
    else:
        print(
            'This test requires an input file.  Please select one from the data directory. '
            '(i.e. python solver.py ./data/gc_4_1)')

