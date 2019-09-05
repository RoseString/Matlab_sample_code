function canWreck = wreckIt(force, numberOfHits, criticalLoad)
    % calculate the net force
    netForce = force .* numberOfHits;
    % check if net force >= critical load
    canWreck = (netForce >= criticalLoad);
end