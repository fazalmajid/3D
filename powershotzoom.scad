/* Pen/pencil case */
/* $fa=0.5;
$fs=0.5; */
$fn=256;

module superellipse(w, h, n, step) {
  ell = concat(
    [for(i = [-w/2 : step : w/2]) [i, h/2*pow(1-pow(abs(i)/w*2, n), 1/n)]],
    [for(i = [w/2 : -step : -w/2]) [i, -h/2*pow(1-pow(abs(i)/w*2, n), 1/n)]]
  );
  polygon(ell);
}

difference() {
  linear_extrude(height=20) {
    superellipse(50.6 + 2*0.25 + 2*2, 33.4 + 2*0.25 + 2*2, 3.6, .05);
  }
  translate([0, 0, 2])
  linear_extrude(height=20) {
    superellipse(50.6 + 2*0.25 - 0.7, 33.4 + 2*0.25 -0.5, 3.6, .05);
  };
}
