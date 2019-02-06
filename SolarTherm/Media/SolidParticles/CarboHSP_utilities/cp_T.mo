within SolarTherm.Media.SolidParticles.CarboHSP_utilities;
function cp_T "Specific heat capacity of solid CarboHSP particle as a function of temperature"
	extends Modelica.Icons.Function;
	input Modelica.SIunits.Temperature T "Temperature";
	output Modelica.SIunits.SpecificHeatCapacity cp "Specific heat capacity";
protected
	constant Real p1 = -1.12e-3;
	constant Real p2 = 2.07;
	constant Real p3 = 264.;

	Modelica.SIunits.Temp_C T_C = Modelica.SIunits.Conversions.to_degC(T) "Temperature in degree Celsius";
algorithm
	cp := p1 * (T_C ^ 2) + p2 * T_C + p3;
end cp_T;
