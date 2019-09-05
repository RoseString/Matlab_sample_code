function rna = dna2rna(dna)
    % logical indexing
    a = dna == 'A';
    t = dna == 'T';
    c = dna == 'C';
    g = dna == 'G';
    
    % convert to rna nucletides
    dna(a) = 'U';
    dna(t) = 'A';
    dna(c) = 'G';
    dna(g) = 'C';
    
    rna = dna;
end