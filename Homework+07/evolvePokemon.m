function result = evolvePokemon(pokedex, name)
    currentPokemon = name; 
    n = 1; % the index of the evolution line cell array
    exists = false; % if this is a pokemon
    
    % a loop to locate a pokemon and find its evolution
    while ~isempty(currentPokemon)
        % add a pokemon to the evolution line
        evolutionLine{n} = currentPokemon;
        % locate the pokemon with a specific name
        pokemonIdx = 0;
        for i = 1: length(pokedex)
            if strcmp(pokedex(i).Name, currentPokemon)
                pokemonIdx = i;
                exists = true;
            end    
        end
        %%% if cannot find the name in the pokedex
        %%% output the result as a string
        %%% and exit the while loop
        if pokemonIdx == 0
            result = sprintf('%s is not a Pokemon.', name);
            break;
        end
        % then find its evolution
        currentPokemon = pokedex(pokemonIdx).Evolution;
        % increment the index of the cell array
        n = n + 1;
    end
    
    % output the result as a cell array (evolution line)
    % if the name exists in pokedex
    if exists
        result = evolutionLine;
    end
end