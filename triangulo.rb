##Implemente uma classe que modele um triangulo equilátero(lados iguais)

##Atributos: lado, perímetro, área.
##Métodos: calcArea(), calcPerímeto() e seus gets. O lado deverá ser o único atributo inicializado via construtor.
##Fórmulas: 
##Área: lado * (raiz quadrada(3) / 2)
##Perímetro: 3 * lado

class Triangulo

def initialize(lado)
    @lado = lado;
end;

def calc_Area()
    @area = @lado * (Math.sqrt(3 * 3) / 2);
end;

def calc_Perimetro()
    @perimetro = 3 * @lado;
end;

def get_Lado()
    puts "O lado do triângulo é: #{@lado}";
end;

def get_Area()
    puts "A área do triângulo é: #{@area}";
end;

def get_Perimetro()
    puts "O perímetro do triângulo é: #{@perimetro}";
end;

end;

t = Triangulo.new(3);
t.get_Lado;
t.calc_Area;
t.calc_Perimetro;
t.get_Area;
t.get_Perimetro;