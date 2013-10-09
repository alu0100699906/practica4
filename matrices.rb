#!/usr/bin/ruby      


########################## INSERTAR #######################################
#Insertar elementos de la matriz A
def insertarA
  a=[[0,0,0],[0,0,0],[0,0,0]]
  i,j=0,0
  while i<3
     while j<3
        puts "Elemento #{i+1} fila y #{j+1} columna"
        line=gets.to_i
        a[i][j]=line
        j+=1
     end
     j=0
     i+=1
   end
return a
end

#Insertar elementos de la matriz B
def insertarB
  b=[[0,0,0],[0,0,0],[0,0,0]]
  i,j=0,0
  while i<3
     while j<3
        puts "Elemento #{i+1} fila y #{j+1} columna"
        line=gets.to_i
        b[i][j]=line
        j+=1
     end
     j=0
     i+=1
   end
return b
end

######################## END INSERTAR ###############################


######################## MOSTRAR ####################################
#Subrutina para mostrar matrices
def mostrarMatriz(a,b)
n=0
puts "#{b}:"
while n<3
puts a[n].join(" ")
n = n+1
end	
end

####################### END MOSTRAR ###############################

####################### SUMA ######################################

#Subrutina que calcula la suma de dos matrices cuadradas

def sumar(m,n)
  mostrarMatriz(m, "Ma")
  mostrarMatriz(n, "Mb")
  c=[[0,0,0],[0,0,0],[0,0,0]]
  i=0
  j=0
  while i<3
   while j<3
     c[i][j]+=m[i][j]+n[i][j]

     j+=1
   end
   j=0
   i+=1
  end
return c
end

##################### END SUMA ##################################

##################### MAIN ######################################
puts "--- Calcular suma matricial A+B ---"

puts "Inserta la matriz A elemento a elemento"
a=insertarA
puts "Inserta la matriz B elemento a elemento"
b=insertarB

v= sumar(a,b)
mostrarMatriz(v, "Resultado")

#################### END MAIN ##################################


