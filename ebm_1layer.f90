program ebm_1layer_tindp
	implicit none
	!Calculating the Temperature at the Top of Atmosphere and at the Surface of a 1-layer atmosphere Earth
 	!Declaring our constants
 	real(kind=8) :: S, albedo, sigma
 	!Declaring our variables
 	real(kind=8) :: Ta, Tg
 	!Assigning the value to our constant terms
 	S = 1364
 	albedo = 0.3
 	sigma = 5.67e-8
 	!Calculating the value of Ta
 	Ta = ((S/4*(1-albedo))/sigma)**0.25
 	print*,"Temperature at the top of atmosphere is:", Ta
 	!Calculating the value of Tg
 	Tg = ((S/4*(1-albedo) + sigma*(Ta**4))/sigma)**0.25
 	print*,"Temperature at the surface is:", Tg
 end program ebm_1layer_tindp
