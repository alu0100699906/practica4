#!/usr/bin/ruby      

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

a=[[1,1,1],[1,1,1],[1,1,1]]
b=[[1,1,1],[1,1,1],[1,1,1]]
v= sumar(a,b)
mostrarMatriz(v, "Resultado")

#################### END MAIN ##################################


