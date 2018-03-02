
T = require 'transducers.js'

C = require 'transducers-js'

R = require 'ramda'


A = [I for I from 1 to 100000000]


CT = C.comp do

	# C.take 3000

	do

		x <- C.filter

		if x%2 is 0

			true

		else

			false

	do

		x <- C.map

		x*2*2

	do

		x <- C.map

		x / 10




RT = R.compose do


	do

		x <- R.map

		x / 10

	do

		x <- R.map

		x*2*2

	do

		x <- R.filter

		if x%2 is 0

			true

		else

			false



	# R.take 3000




TT = T.compose do


	# T.take 3000

	do

		x <- T.filter

		if x%2 is 0

			true

		else

			false

	do

		x <- T.map

		x*2*2

	do

		x <- T.map

		x / 10




global.gc!


# Tstart = (new Date!).getTime!

# (C.into [],CT,A).length

# Tfinal = (new Date!).getTime!

# console.log "cognitect-labs : ", Tfinal - Tstart


# global.gc!


# Tstart = (new Date!).getTime!

# (T.seq A,TT).length

# Tfinal = (new Date!).getTime!

# console.log "jlongster : ", Tfinal - Tstart


# global.gc!

Tstart = (new Date!).getTime!

(RT A).length

Tfinal = (new Date!).getTime!

console.log 'Ramda : ', (Tfinal - Tstart)
