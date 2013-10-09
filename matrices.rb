#! /usr/bin/ruby

#Subrutina para crear una matriz cuadrada
def crearMatriz(n)
	i,j=0,0
	fila,col, elemento=0,0,0
	matriz=[[],[],[],[],[],[]]
	while fila<n
		while col<n
			puts "Element #{fila} #{col}"
			matriz[fila][col]= gets.to_i
			col += 1
		end
		col=0
		fila += 1
	end
	return matriz
end

#Subrutina para mostrar matrices
def mostrarMatriz(a,b,fila)
	n=0
	puts "#{b}:"
	while n<fila
		puts "#{a[n].join(" ")}"
		n = n+1
	end	
end

#Subrutina que calcula el producto de dos matrices cuadradas
def productoMatriz(m,n,fila)
	#mostrarMatriz(m,"MatrizA",fila)
	#mostrarMatriz(n,"MatrizB",fila)
	i,j,k=0,0,0
	tmp=0
	c=[[],[],[],[],[],[]]
	while k<fila
		while i<fila
			while j<fila
				tmp += m[k][j] * n[j][i]
				c[k][i]=tmp
				j += 1
			end
			tmp=0
			j = 0
			i += 1
			
		end
		i = 0
		k += 1
	
	end
	return c
end

##########MAIN########     #########  ###########
	puts "--- Calcular producto matricial AxB ---"
	puts "Inserte el orden de la matriz cuadrada (MAX 6):"
	n=gets.to_i
	puts "Matriz A:"
	a= crearMatriz(n) #[[2,0,1],[3,0,0],[5,1,1]]
	mostrarMatriz(a,"A",n)
	puts "Matriz B:"
	b= crearMatriz(n) #[[1,0,1],[1,2,1],[1,1,0]]

	v=productoMatriz(a,b,n)
	mostrarMatriz(v, "Resultado",n)
##########      ########     #########  ###########

