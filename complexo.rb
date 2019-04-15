class Complexo
    
    def initialize(a, bi)
        @a = a;
        @bi = bi;
    end;
    
    def soma(c, di)
        @sreal = @a + c;
        @simag = @bi + di;
        @stotal = @sreal + @simag;
        puts "Resultado da soma: #{@stotal}";
    end;
    
    def multiplica(c, di)
        @mreal = (@a * c) - (@bi * di);
        @mimag = (@a * di) + (@bi * c);
        @mtotal = @mreal * @mimag;
        puts "Resultado da multiplicação: #{@mtotal}";
    end;
    
    def toString()
        puts "A notação é: #{@a} + #{@bi}";
    end;
    
    def modulo()
        puts "O módulo é: #{Math.sqrt((@a * @a) + (@bi + @bi))}";
    end;
    
    def argumento_Principal()
        puts "O argumento principal é: #{Math.tan(-1) * (@bi / @a)}";
    end;
    
end;

c = Complexo.new(5, 7);
c.soma(2, 4);
c.multiplica(2, 4);
c.modulo;
c.argumento_Principal;