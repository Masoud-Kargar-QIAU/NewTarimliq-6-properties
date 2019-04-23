function [ GlobalIndex ] = GlobalArtiFact( GraphDependency )

% [ArtifactNumber,~]=size(GraphDependency);
row_has_all_zeros=~any(GraphDependency, 2);
GlobalIndex = find(row_has_all_zeros);

end

