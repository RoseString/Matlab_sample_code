function numberOfMarbles = marbles(heightOfContainer, diameterOfContainer, diameterOfMarble)

% calculate the radius and volume of the container
radiusOfContainer = diameterOfContainer ./ 2;
volumeOfContainer = pi.*(radiusOfContainer.^2).*heightOfContainer;

% calculate the radius and volume of a marble
radiusOfMarble = diameterOfMarble ./ 2;
volumeOfMarble = (4/3).*pi.*(radiusOfMarble.^3);

% estimate how many marbles in the container
numberOfMarbles = ceil(volumeOfContainer ./ volumeOfMarble);
end