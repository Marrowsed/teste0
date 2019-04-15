#Implemente uma classe Lâmpada. Toda lâmpada possui um estado (on/off). 
#Sabe-se que as lâmpadas podem ter seu estado trocado (click do interruptor). 
#Será necessário também uma funcionalidade para checar o estado atual da lâmpada. 
#Uma lâmpada estraga após uma quantidade de clicks 
#(o click não troca mais o estado deixando-a eternamente em off) e esta depende da lâmpada. 
#Implemente esta situação e seu teste.

class Lampada 
    
    def initialize(liga, limite)
        @liga = liga;
        @limite = limite;
        @counter = 0;
    end;
    
    def liga
        if @counter < @limite 
            if @liga == "off"
                estado;
                @liga = "on";
                puts "Você ligou a luz !";
                @counter = @counter + 1;
            else
                estado;
                @liga = "off";
                puts "Você desligou a luz ! "
                @counter = @counter + 1;
            end;
        else 
            @liga = "off";
            puts "Interruptor quebrado ! Luz Desligada !";
                @counter = @counter + 1;
        end;
    end;
    
    def estado
        if @liga == "off"
            puts "Lâmpada está desligada !";
        else
            puts "Lâmpada está ligada !";
        end;
    end;
    
    def limite 
        if @counter == @limite
            puts "Sua lâmpada está prestes a quebrar !";
            else if @counter > @limite
                puts "Você clicou #{@counter} vezes no interruptor e ele quebrou !";
            else
                puts "Você clicou #{@counter} vezes no interruptor e ele ainda não quebrou !";
            end;
        end;
    end;
    
    def counter
        puts "Número de cliques: #{@counter}";
    end;
    
end;

l = Lampada.new("off", 4);
l.liga;
l.liga;
l.liga;
l.liga;
l.liga;
l.liga;
l.liga;
l.liga;
l.liga;
l.liga;
l.limite;