Spherical.new(1,(180/4).degrad,(90/2).degrad).z.round(0.000000001)


[1,1,1].normalizeSum.sqrt

0.5.pow(2)+0.5.pow(2)+0.707106781.pow(2)



(
{
	var n1,n2,n3;
	var sig1,sig2,sig3;
	var v,i,j,k,q;
	var pitch1, pitch2, pitch3;
	var pitch, fund=220;

v=Quaternion(0,1,0,0)

i=Quaternion(0, xyz.[0], 0, 0); j=Quaternion(0, 0, xyz.[1], 0); k=Quaternion(0, 0, 0, xyz.[2]);

axis=i+j+k;

q=((axis*exp(Complex(0,1)*angle_cuttfreq1).imag)+exp(Complex(0,1)*angle_cuttfreq1).real);

v=q*v*q.conjugate;

	pitch=Cartesian(v.b,v.c,v.d);

	n1=pitch.x; n2=pitch.y; n3=pitch.z;

	pitch1=2.pow(n1/12);
	pitch2=2.pow(n2/12);
	pitch3=2.pow(n3/12);

	sig1=SinOsc.ar(fund*pitch1,mul:pitch1.reciprocal);
	sig2=SinOsc.ar(fund*pitch2,mul:pitch1.reciprocal);
	sig3=SinOsc.ar(fund*pitch3,mul:pitch1.reciprocal);

	Out.ar(0,sig1!2);Out.ar(0,sig2!2);Out.ar(0,sig3!2);

}.play;
)