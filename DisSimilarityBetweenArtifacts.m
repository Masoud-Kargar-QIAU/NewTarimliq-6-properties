function [ DisSimBetweenArtifacts ] = DisSimilarityBetweenArtifacts( GraphDependency ,ArtifactNumber1,ArtifactNumber2)

if(Power1(GraphDependency ,ArtifactNumber1)==0 && Power1(GraphDependency ,ArtifactNumber2)==0)
     DisSimBetweenArtifacts=1;
else
    DisSimBetweenArtifacts=(abs(Power2(GraphDependency,ArtifactNumber1,ArtifactNumber2)*Power1(GraphDependency,ArtifactNumber1)- Power2(GraphDependency,ArtifactNumber2,ArtifactNumber2)*Power1(GraphDependency,ArtifactNumber2)))/((Power1(GraphDependency,ArtifactNumber1)+Power1(GraphDependency,ArtifactNumber2))^2);
    
end

end

