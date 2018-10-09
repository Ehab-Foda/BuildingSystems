within BuildingSystems.Climate.WeatherDataMeteonorm;
block SouthPole_AmundsenScott_Meteonorm_ASCII
  extends BuildingSystems.Climate.WeatherData.BaseClasses.WeatherDataFileASCII(
  info="Source: Meteonorm 7.0",
  filNam=Modelica.Utilities.Files.loadResource("modelica://BuildingSystems/Climate/weather/SouthPole_AmundsenScott.txt"),
  final tabNam="tab1",
  final timeFac = 1.0/3600.0,
  final deltaTime = 1800.0,
  final columns={
    5, // beam horizontal radiation
    6, // diffuse horizontal radiation
    3, // air temperature
    8, // wind speed
    9, // wind direction
    4, // relative humidity
    7  // cloud cover
    },
  final scaleFac = {1.0,1.0,1.0,1.0,1.0,0.01,1.0},
  final latitudeDeg = -90.0,
  final longitudeDeg = 0.0,
  final longitudeDeg_0 = 0.0);
  annotation(Documentation(info="<html>source: Meteonorm 7.0</html>"));
end SouthPole_AmundsenScott_Meteonorm_ASCII;
