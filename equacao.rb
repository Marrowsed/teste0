##Implemente a classe Eq2Grau que possua:
##Atributos: a,b e c (doubles);
##Métodos: 
##delta(): retorna o delta da equação;
##raiz1(): retorna a primeira raiz se ∆ ≥ 0, se não retorna NaN;
##raiz2(): retorna a segunda raiz se ∆ ≥ 0, se não retorna NaN.

class Eq2Grau
    
    def initialize(a, b, c)
        @a = a;
        @b = b;
        @c = c;
    end;
    
    def delta()
        @delta = (@b * @b) - 4 * @a * @c;
        puts "O delta é: #{@delta}";
        if @delta <= 0
            puts "Não possui raízes";
        end;
    end;
    
    def raiz1()
        if @delta >= 0
            @raiz1 = (-@b + Math.sqrt(@delta * @delta)) / 2 * @a;
            puts "A raiz 1 é: #{@raiz1}";
        else 
            @raiz1 = nil;
        end;
    end;
    
    def raiz2()
        if @delta >= 0
            @raiz2 = (-@b - Math.sqrt(@delta * @delta)) / 2 * @a;
            puts "A raiz 2 é: #{@raiz2}";
        else 
            @raiz2 = nil;
        end;
    end;
   
end;

e = Eq2Grau.new(1, -5, 6); ##FUNCIONA
e.delta;
e.raiz1;
e.raiz2;

f = Eq2Grau.new(1, -4, 5); ##FUNCIONA
f.delta;
f.raiz1;
f.raiz2;