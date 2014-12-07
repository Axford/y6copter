BasePlateFrontArmLength = 80;

module BasePlate()
{
	linear_extrude(3)
	hull() {
		for (i=[1, -1])
		mirror([i,0,0])
		rotate(a=i * 60, v=[0, 0, 1])
		translate([0, BasePlateFrontArmLength, 0])
			circle(r=15);

		translate([0, -120, 0])
			circle(r=15);
	}
}