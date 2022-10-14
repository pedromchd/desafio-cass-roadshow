// declaramos o módulo e listamos todos os seus pinos
module full_adder (S, Cout, A, B, Cin);

  // informamos o sentido de cada pino
  input  A;  		// A é uma entrada
  input  B; 		// B é uma entrada
  input  Cin; 	// Cin é uma entrada
  output S; 		// S é uma saída
  output Cout;	// Cout é uma saída

  // declaramos os fios internos
  wire k, w, y;

  // instanciamos os elementos, ligando pinos e fios
  xor x1 (k, A, B);   // k <-- A xor B 
  xor x2 (S, k, Cin); // S <-- k xor Cin
  and a1 (w, k, Cin); // w <-- k and Cin
  and a2 (y, A, B);   // y <-- A and B
  or  o1 (Cout, w, y); // Cout <-- w and y
  
endmodule
