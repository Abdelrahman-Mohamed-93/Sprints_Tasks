def mutate_string(string,position,character):
    original_string = string
    l = list(original_string)
    l[position] = character
    mutated_string = "".join(l)
    print(mutated_string)

mutate_string("abracadabra",5,"k")