require "pry"
class PigLatinizer
    @@consonants = /^(Nth|Sch|Scr|Shr|Spl|Spr|Squ|Str|Thr|Bl|Br|Ch|Ck|Cl|Cr|Dr|Fl|Fr|Gh|Gl|Gr|Ng|Ph|Pl|Pr|Qu|Sc|Sh|Sk|Sl|Sm|Sn|Sp|St|Sw|Th|Tr|Tw|Wh|Wr)|^(nth|sch|scr|shr|spl|spr|squ|str|thr|bl|br|ch|ck|cl|cr|dr|fl|fr|gh|gl|gr|ng|ph|pl|pr|qu|sc|sh|sk|sl|sm|sn|sp|st|sw|th|tr|tw|wh|wr)|^[bcdfghjklmnpqrstvwxyz]|^[BCDFGHJKLMNPQRSTVWXYZ]/

    def piglatinize(words)
        words_arr = words.split(" ")
        new_word = []
        words_arr.each do |word|
            if word.match(@@consonants)
                consonant = word.match(@@consonants)[0]
                new_word << "#{word.sub(consonant,"")}#{consonant}ay"
            else
                new_word << "#{word}way" 
            end 
        end
        new_word.join(" ")
    end
end 