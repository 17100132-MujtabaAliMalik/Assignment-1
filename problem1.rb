initscale = ""


while (1)
    puts "Enter initial scale (C, K or F). Enter 'Q' or 'q' to terminate"
    initscale = gets.chomp;
    if initscale == 'q' || initscale == 'Q'
        break
    end
    puts "Enter initial value"
    initval = gets.chomp
    initval = initval.to_i
    puts "Initial temperature is #{initval} degree #{initscale}"
    puts "Enter target scale (C, K or F)"
    targetscale = gets.chomp
    
    if initscale == 'C' || initscale == 'c'
        if targetscale == 'k' || targetscale == 'K'
            initval = initval + 273.15
        elsif targetscale == 'f' || targetscale == 'F'
            initval = (initval*1.8) + 32
        end
    end
    
    if initscale == 'K' || initscale == 'k'
        if targetscale == 'c' || targetscale == 'C'
            initval = initval - 273.15
        elsif targetscale == 'f' || targetscale == 'F'
            initval = (initval-273.15)*(1.8) + 32
        end
    end
    
    if initscale == 'F' || initscale == 'f'
        if targetscale == 'k' || targetscale == 'K'
            initval = (9/5)*(initval - 273.15) + 32
        elsif targetscale == 'c' || targetscale == 'C'
            initval = (initval*1.8) + 32
        end
    end
    puts "Target temperature is #{initval} degree #{targetscale}"
end