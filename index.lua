Vocabulary = {}


function Vocabulary.newWord(word, definition)
    local entry = {
        word = word,
        definition = definition
    }
    table.insert(Vocabulary, entry)
    print("word added: " .. word)
end


function Vocabulary.showDefinition(word)
    local found = false
    for _, entry in ipairs(Vocabulary) do
        if entry.word == word then
            print(word .. ": " .. entry.definition)
            found = true
            break
        end
    end

    if not found then
        print("not found: " .. word)
    end
end


Vocabulary.newWord("maintenance", "maintaining, repairing, and keeping something in working order regularly")


Vocabulary.showDefinition("maintenance")
