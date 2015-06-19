class WaOC

    def self.install
        puts "Instalando OpenCode"
        sleep 1
        
        puts "Baixando os arquivos"
        system "wget https://github.com/WaOC/WaOC-CDN/raw/master/opencode_theme-0.0.2.gem"
        system "wget https://raw.githubusercontent.com/WaOC/WaOC-CDN/master/gulpfile.js"
        system "wget https://raw.githubusercontent.com/WaOC/WaOC-CDN/master/package.json"
        
        puts "Instalando OpenCode"
        sleep 1
        system "gem install opencode_theme-0.0.2.gem"
        
        puts "Instalando as dependências com NPM"
        system "npm install"
        
        puts "✔ Opencode instalado com sucesso"
    end    
    
    def self.edit(storeId, devKey, passKey, themeId)
        if storeId == "" && devKey == "" && passKey == "" && themeId == ""
            puts "✘ Esta faltando alguns parametros, por favor, leia a documentacao"  
        else
            FileUtils.mkdir(storeId.to_s)
            Dir.chdir(storeId.to_s)
            system "opencode configure " + devKey.to_s + " " + passKey.to_s + " " + themeId.to_s
            
            sleep 3
            exec "opencode download"
            puts "✔ Loja pronta para ser editada"
        end
    end
    
    def self.work(storeId)
        if(storeId == "")
            puts "✘ Está faltando o ID da loja"
        else
           puts "Iniciando Work..."
           Dir.chdir(storeId)
           system "opencode watch &"
           Dir.chdir("../")
           system "gulp &"
           puts "✔ Modo Work ON"
        end
    end
    
    def self.stop
        system "pkill ruby"
        system "pkill opencode"
        system "pkill gulp"
    end
    
    def self.version
        puts "WaOC Alpha v1"
    end
end
