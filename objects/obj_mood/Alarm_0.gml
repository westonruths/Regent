/// @description Hourly mood adjustment

mood_goal = mood_base

for(var i=0; i<array_length(thought); i++) {
	if thoughtactive[i] == 1 && thoughttimer[i] > 0 {
		thoughttimer[i] -= 1/20
		
		mood_goal += thoughteffect[i]
		
		caption = thoughtcaption[i]
	} else {
		thoughtactive[i] = 0
		thoughttimer[i] = thoughttimero[i]
	}
}

if mood_goal < 0 { mood_goal = 0 }

if mood_goal > 100 { mood_goal = 100 }

var incrementor = round(abs(mood_goal-mood)/10)

if (incrementor < 1 ) { incrementor = 1 }

if mood > mood_goal { mood -= incrementor/20 }

if mood < mood_goal { mood += incrementor/20 }