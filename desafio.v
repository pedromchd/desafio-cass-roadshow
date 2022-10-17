// declaramos o módulo e listamos todos os seus pinos
module desafio (
	// informamos o sentido de cada pino
	// declaramos S, A e B como um conjunto de fios
	output [6:0] S, // A é uma palavra binária de 6 bits de entrada
	input [5:0] A, 	// B é uma palavra binária de 6 bits de entrada
	input [5:0] B,	// S é uma palavra binária de 7 bits de saída
	input LOW				// LOW é um pino ligado a GND (ver desafio.pinout)
	);

  // declaramos os fios internos
  wire [4:0] Cout; // Cout é um vetor de fios internos

  full_adder FA_0( // ligando os pinos da instância FA_0 do full_adder
  	.S(S[0]), 			// liga S[0] à saída S
  	.Cout(Cout[0]),// liga Cout[0] à saída Cout
  	.A(A[0]), 			// liga A[0] à entrada A
  	.B(B[0]), 			// liga B[0] a entrada B
  	.Cin(LOW)
	);
  // DESAFIO! COMPLETE O CÓDIGO COM AS LIGAÇÕES 
  // CORRETAS PARA FAZER O SOMADOR DE 6 BITS FUNCIONAR.
  full_adder FA_1(.S(), .Cout(), .A(), .B(), .Cin() );
  full_adder FA_2(.S(), .Cout(), .A(), .B(), .Cin() );
  full_adder FA_3(.S(), .Cout(), .A(), .B(), .Cin() );
  full_adder FA_4(.S(), .Cout(), .A(), .B(), .Cin() );
  full_adder FA_5(.S(S[5]), .Cout(S[6]),    .A(A[5]), .B(B[5]), .Cin(Cout[4]) );
  
endmodule
