% Graphic representation of approaches. l: Lagrange, s: Squares method,
% sp0 and sp1: Splines
x=linspace(-pi,pi);
y=sin(x);
l = (-0.6855804857536925) .* ((x - (4.523972077193033)) .* (x - (3.0057603845271466)) .* (x - (5.306644151423592)) .* (x - (2.4114357407564224)) .* (x - (-0.7850479654803975)) .* (x - (6.224182513472877)) .* (x - (-2.9030655628024267)) .* (x - (-2.620853477468518)) .* (x - (-4.473053298914355)) .* (1) / (-4729.951743899723)) + (-0.9823019863592075) .* ((x - (3.896993427370104)) .* (x - (3.0057603845271466)) .* (x - (5.306644151423592)) .* (x - (2.4114357407564224)) .* (x - (-0.7850479654803975)) .* (x - (6.224182513472877)) .* (x - (-2.9030655628024267)) .* (x - (-2.620853477468518)) .* (x - (-4.473053298914355)) .* (1) / (6782.539831017441)) + (0.13541496082078464) .* ((x - (3.896993427370104)) .* (x - (4.523972077193033)) .* (x - (5.306644151423592)) .* (x - (2.4114357407564224)) .* (x - (-0.7850479654803975)) .* (x - (6.224182513472877)) .* (x - (-2.9030655628024267)) .* (x - (-2.620853477468518)) .* (x - (-4.473053298914355)) .* (1) / (5613.036778803152)) + (-0.8285657522382525) .* ((x - (3.896993427370104)) .* (x - (4.523972077193033)) .* (x - (3.0057603845271466)) .* (x - (2.4114357407564224)) .* (x - (-0.7850479654803975)) .* (x - (6.224182513472877)) .* (x - (-2.9030655628024267)) .* (x - (-2.620853477468518)) .* (x - (-4.473053298914355)) .* (1) / (-26146.730280891406)) + (0.6669865542203343) .* ((x - (3.896993427370104)) .* (x - (4.523972077193033)) .* (x - (3.0057603845271466)) .* (x - (5.306644151423592)) .* (x - (-0.7850479654803975)) .* (x - (6.224182513472877)) .* (x - (-2.9030655628024267)) .* (x - (-2.620853477468518)) .* (x - (-4.473053298914355)) .* (1) / (-12117.347426042923)) + (-0.7068591105104192) .* ((x - (3.896993427370104)) .* (x - (4.523972077193033)) .* (x - (3.0057603845271466)) .* (x - (5.306644151423592)) .* (x - (2.4114357407564224)) .* (x - (6.224182513472877)) .* (x - (-2.9030655628024267)) .* (x - (-2.620853477468518)) .* (x - (-4.473053298914355)) .* (1) / (184420.84070103237)) + (-0.05896856496931816) .* ((x - (3.896993427370104)) .* (x - (4.523972077193033)) .* (x - (3.0057603845271466)) .* (x - (5.306644151423592)) .* (x - (2.4114357407564224)) .* (x - (-0.7850479654803975)) .* (x - (-2.9030655628024267)) .* (x - (-2.620853477468518)) .* (x - (-4.473053298914355)) .* (1) / (269662.72417195037)) + (-0.23627167644939231) .* ((x - (3.896993427370104)) .* (x - (4.523972077193033)) .* (x - (3.0057603845271466)) .* (x - (5.306644151423592)) .* (x - (2.4114357407564224)) .* (x - (-0.7850479654803975)) .* (x - (6.224182513472877)) .* (x - (-2.620853477468518)) .* (x - (-4.473053298914355)) .* (1) / (111522.14353705876)) + (-0.49752147325751334) .* ((x - (3.896993427370104)) .* (x - (4.523972077193033)) .* (x - (3.0057603845271466)) .* (x - (5.306644151423592)) .* (x - (2.4114357407564224)) .* (x - (-0.7850479654803975)) .* (x - (6.224182513472877)) .* (x - (-2.9030655628024267)) .* (x - (-4.473053298914355)) .* (1) / (-88722.61435093523)) + (0.9714956707647036) .* ((x - (3.896993427370104)) .* (x - (4.523972077193033)) .* (x - (3.0057603845271466)) .* (x - (5.306644151423592)) .* (x - (2.4114357407564224)) .* (x - (-0.7850479654803975)) .* (x - (6.224182513472877)) .* (x - (-2.9030655628024267)) .* (x - (-2.620853477468518)) .* (1) / (-4350146.491862412));
s =  - 0.5218211959782941 + 0.04996624466946437 * x + 0.03881644161618016 * power(x, 2) - 0.008168084046780183 * power(x, 3);
x0=linspace(-pi,0);
sp0 = (-0.04675277730742207/6) * power(x0,3) + (-0.04675277730742207/2) * power(x0,2) - 0.16584578591044302 * x0 + 0;
x1=linspace(0,pi);
sp1 = - (-0.04675277730742207/6) * power(x1,3) + (-0.04675277730742207/2) * power(x1,2) - 0.16584578591044302 * x1 + 0;
grid on;
hold on;
plot(x,y,x,l,x,s,x0,sp0, x1, sp1)

% Finding digits accuracy
for x = -pi:pi
    disp("sin: ")
    sin(x)
    disp("Lagrange: ")
    (-0.6855804857536925) .* ((x - (4.523972077193033)) .* (x - (3.0057603845271466)) .* (x - (5.306644151423592)) .* (x - (2.4114357407564224)) .* (x - (-0.7850479654803975)) .* (x - (6.224182513472877)) .* (x - (-2.9030655628024267)) .* (x - (-2.620853477468518)) .* (x - (-4.473053298914355)) .* (1) / (-4729.951743899723)) + (-0.9823019863592075) .* ((x - (3.896993427370104)) .* (x - (3.0057603845271466)) .* (x - (5.306644151423592)) .* (x - (2.4114357407564224)) .* (x - (-0.7850479654803975)) .* (x - (6.224182513472877)) .* (x - (-2.9030655628024267)) .* (x - (-2.620853477468518)) .* (x - (-4.473053298914355)) .* (1) / (6782.539831017441)) + (0.13541496082078464) .* ((x - (3.896993427370104)) .* (x - (4.523972077193033)) .* (x - (5.306644151423592)) .* (x - (2.4114357407564224)) .* (x - (-0.7850479654803975)) .* (x - (6.224182513472877)) .* (x - (-2.9030655628024267)) .* (x - (-2.620853477468518)) .* (x - (-4.473053298914355)) .* (1) / (5613.036778803152)) + (-0.8285657522382525) .* ((x - (3.896993427370104)) .* (x - (4.523972077193033)) .* (x - (3.0057603845271466)) .* (x - (2.4114357407564224)) .* (x - (-0.7850479654803975)) .* (x - (6.224182513472877)) .* (x - (-2.9030655628024267)) .* (x - (-2.620853477468518)) .* (x - (-4.473053298914355)) .* (1) / (-26146.730280891406)) + (0.6669865542203343) .* ((x - (3.896993427370104)) .* (x - (4.523972077193033)) .* (x - (3.0057603845271466)) .* (x - (5.306644151423592)) .* (x - (-0.7850479654803975)) .* (x - (6.224182513472877)) .* (x - (-2.9030655628024267)) .* (x - (-2.620853477468518)) .* (x - (-4.473053298914355)) .* (1) / (-12117.347426042923)) + (-0.7068591105104192) .* ((x - (3.896993427370104)) .* (x - (4.523972077193033)) .* (x - (3.0057603845271466)) .* (x - (5.306644151423592)) .* (x - (2.4114357407564224)) .* (x - (6.224182513472877)) .* (x - (-2.9030655628024267)) .* (x - (-2.620853477468518)) .* (x - (-4.473053298914355)) .* (1) / (184420.84070103237)) + (-0.05896856496931816) .* ((x - (3.896993427370104)) .* (x - (4.523972077193033)) .* (x - (3.0057603845271466)) .* (x - (5.306644151423592)) .* (x - (2.4114357407564224)) .* (x - (-0.7850479654803975)) .* (x - (-2.9030655628024267)) .* (x - (-2.620853477468518)) .* (x - (-4.473053298914355)) .* (1) / (269662.72417195037)) + (-0.23627167644939231) .* ((x - (3.896993427370104)) .* (x - (4.523972077193033)) .* (x - (3.0057603845271466)) .* (x - (5.306644151423592)) .* (x - (2.4114357407564224)) .* (x - (-0.7850479654803975)) .* (x - (6.224182513472877)) .* (x - (-2.620853477468518)) .* (x - (-4.473053298914355)) .* (1) / (111522.14353705876)) + (-0.49752147325751334) .* ((x - (3.896993427370104)) .* (x - (4.523972077193033)) .* (x - (3.0057603845271466)) .* (x - (5.306644151423592)) .* (x - (2.4114357407564224)) .* (x - (-0.7850479654803975)) .* (x - (6.224182513472877)) .* (x - (-2.9030655628024267)) .* (x - (-4.473053298914355)) .* (1) / (-88722.61435093523)) + (0.9714956707647036) .* ((x - (3.896993427370104)) .* (x - (4.523972077193033)) .* (x - (3.0057603845271466)) .* (x - (5.306644151423592)) .* (x - (2.4114357407564224)) .* (x - (-0.7850479654803975)) .* (x - (6.224182513472877)) .* (x - (-2.9030655628024267)) .* (x - (-2.620853477468518)) .* (1) / (-4350146.491862412))
end