class PigLatinizer

    
    def initialize()
    end

    def piglatinize(input)
        letter_array = input.split("")
        word_array = input.split(" ")
        word_array.map{|word| piglatinize_word(word)}.join(" ")
            
    end
    
    def piglatinize_word(input)
        vowel = /[aAeEiIoOuU]/
        consonant = /\A[^aeiou]+/i

        #rule 1 - Vowel
        if vowel.match(input[0])
            input + "way"
        else
        #rule 2 - Constants/constant clusters
            consonant_cluster = consonant.match(input).to_s
            cluster_amount = consonant_cluster.size
            clusterless_word = input.slice(cluster_amount..-1)
            pig = clusterless_word + consonant_cluster
            pig + "ay"


        end
        
    end






end
