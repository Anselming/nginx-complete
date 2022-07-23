class App
    def initialize nome
        @nome = nome
    end

    def Ola
        puts "Olá #{@nome}, boas vindas!"
    end
end

minhaApp = App.new "Thiago Anselme"
minhaApp.Ola