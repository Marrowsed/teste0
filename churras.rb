# Dada a classe Pessoa, que possui os atributos: String nome, String sexo
# int idade, boolean vegetariana. Faça agora uma classe Churrasco que possua:
# Atributos: qtdCarne(double);
#Metodo: verificarConsumo(): Recebe via parametro uma pessoa, e com
#isto define a consumação media de carne(quantidade de carne consumida),
#pessoas de 0 a 3 anos não consomem, vegetarianos também não.
#Pessoas de 4 a 12 anos consomem 1 kg de carne e de 13 anos em diante 2 kilos de carne.

class Pessoa 
    
    def initialize(nome, sexo, idade, vegetariana)
        @nome = nome;
        @sexo = sexo;
        @idade = idade;
        @vegetariana = vegetariana;
    end;
    
    def get_Nome
        @nome;
    end;
    
    def get_Idade
        @idade;
    end;
    
    def get_Vegetariana
        @vegetariana
    end;
end;

class Churrasco
    
    def initialize(qtd_Carne)
        @qtd_Carne = qtd_Carne;
    end;
    
    def get_qtd_Carne
        @qtd_Carne;
    end;


#pessoas de 0 a 3 anos não consomem, vegetarianos também não.
#Pessoas de 4 a 12 anos consomem 1 kg de carne e de 13 anos em diante 2 kilos de carne.

    def verificarConsumo(pessoa)
       if pessoa.get_Idade > 0;
           if pessoa.get_Idade <= 3 || pessoa.get_Vegetariana
               puts "#{pessoa.get_Nome} nao come carne";
               puts "Sobrou #{@qtd_Carne} kg de carne";
            else 
                if pessoa.get_Idade >= 4 && pessoa.get_Idade <= 12
                    if @qtd_Carne >= 1
                    puts "#{pessoa.get_Nome} come 1kg de carne";
                    @qtd_Carne = @qtd_Carne - 1;
                    puts "Sobrou #{@qtd_Carne} kg de carne";
                    else
                    puts "Quantidade de carne insuficiente";
                    end;
                else 
                    if @qtd_Carne >= 2
                    puts "#{pessoa.get_Nome} come 2kg de carne";
                    @qtd_Carne = @qtd_Carne - 2;
                    puts "Sobrou #{@qtd_Carne} kg de carne";
                    else
                    puts "Quantidade de carne insuficiente";
                    end;
                end;
           end;
       end;
    end;
end;

c = Churrasco.new(3);
marcus = Pessoa.new("Marcus", "Masculino", 23, false);
paloma = Pessoa.new("Paloma", "Feminino", 3, true);
c.verificarConsumo(marcus);