CL_EPW_PATH = 'C:\Users\Jason\Desktop\test4_2\Punggol';
CL_EPW = 'singapore.epw';
CL_XML_PATH = 'C:\Users\Jason\Desktop\test4_2\Punggol';
CL_XML = {'_Average',...
    'avgBldgHeight_High', 'avgBldgHeight_Low',...   
    'avgObstacleHeight_High.xml', 'avgObstacleHeight_Low.xml',...
    'charLength_High.xml', 'charLength_Low.xml',...
    'coolingCapacity_High.xml','coolingCapacity_Low.xml',...
    'floorHeight_High.xml','floorHeight_Low.xml'...
    'hBDensity_High.xml','hBDensity_Low.xml',...
    'heatReleasedToCanyon_High.xml','heatReleasedToCanyon_Low.xml',...
    'initialT_High.xml','initialT_Low.xml',...
    'LatentAnthroHeat_High.xml','LatentAnthroHeat_Low.xml',...
    'roofVegCoverage_High.xml','roofVegCoverage_Low.xml',...
    'ruralRoadAlbedo_High.xml','ruralRoadAlbedo_Low.xml',...
    'ruralRoadK_High.xml','ruralRoadK_Low.xml',...
    'ruralRoadVHC_High.xml','ruralRoadVHC_Low.xml',...
    'ruralVegFraction_High.xml','ruralVegFraction_Low.xml'...
    };

for i = 1:length(CL_XML)
    currcity = 'Punggol_Residential-';
    run = strcat(currcity, CL_XML{i});
    disp(run); 
    [new_climate_file] = generateEPW_10_xml_AN10_importdata(CL_EPW_PATH,CL_EPW,CL_XML_PATH,run);
end
