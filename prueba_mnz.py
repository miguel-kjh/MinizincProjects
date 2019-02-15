import subprocess
s = subprocess.check_output(['minizinc', 'recetas.mzn'])
print(s)