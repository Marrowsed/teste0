##Implemente uma classe que modele um jogo de advinhação de números de 0 a 99. 
##O jogo deve possuir um método para sortear e outro que simule a advinhação.

class Advinha
    
    def initialize()
        @num;
    end;
    
    def sortear()
        @num = rand(100);
        puts "O número sorteado foi: #{@num}";
    end;
    
    def advinha
        @count = 0;
        while @numAdvinha != @num do 
            @numAdvinha = rand(100);
            @count += 1;
            if @num == @numAdvinha
                puts "Número acertado";
                puts "Você acertou em #{@count} tentativas";
            end;
        end;
    end;
end;

a = Advinha.new();
a.sortear;
a.advinha;