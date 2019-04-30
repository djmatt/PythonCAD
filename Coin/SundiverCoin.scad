

union() {
	difference() {
		linear_extrude(height = 2) {
			projection(cut = false) {
				translate(v = [0, 0, 200]) {
					sphere($fn = 30, r = 35);
				}
			}
		}
		translate(v = [0, 0, 2.0100000000]) {
			linear_extrude(height = 5) {
				import(file = "C:/Users/Matt/Documents/python/CAD/Coin/Dallmeyer.dxf", origin = [28, 0]);
			}
		}
	}
	difference() {
		rotate(a = [0, 0, 22.5000000000]) {
			translate(v = [0, 0, -13]) {
				rotate(a = [-5, 0, 0]) {
					rotate(a = [0, 0, -22.5000000000]) {
						linear_extrude(height = 15) {
							projection(cut = false) {
								rotate(a = [-90, 0, 0]) {
									rotate(a = [30, 0, -45]) {
										difference() {
											cylinder($fn = 30, center = true, h = 5, r = 55);
											cylinder($fn = 30, center = true, h = 5, r = 40);
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, -100]) {
			cube(center = true, size = 200);
		}
	}
}