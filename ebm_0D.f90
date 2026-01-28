program energy_balance
	implicit none
	!Defining our constants
	real(kind=8) :: d !temp_change_in_unit_time
	integer :: time !time stamp
	real(kind=8) :: temp !introducing the intermediate
	real(kind=8) :: C, S, alpha, sigma, T
	print*,"Enter the heat capacity"
	read*,C
	print*,"Enter the Solar Constant"
	read*,S
	print*,"Enter the albedo"
	read*,alpha
	print*,"Enter the Stefan-Boltzmann Constant"
	read*,sigma
	print*,"Enter initial temperature"
	read*,T
	!Defining our variables
	print*,"Temperature change after unit time",d
	!Now since we got the temperature change in unit time, we can apply a do loop to calculate the change in 10 years
	!executing the do loop
	temp = T
	do time=0, 10
		d = (S*(1 - alpha) - sigma*(temp**4))/C 	!Solving the equation
		temp=d*time + temp
		print*,"Temperature after", time, "years:", temp
	end do
end program energy_balance
