const states_field = document.getElementById('user_helps_attributes_0_districts_state_id');
const areas_field = document.getElementById('user_helps_attributes_0_district_id');

states_field.addEventListener('change', filterArea);

function filterArea() {
	console.log('working');

	// 1. get the state selected by user
	const selectedState = states_field.value;
	console.log(selectedState);

	// 2. go through all the states within the areas field
	const areasStates = areas_field.getElementsByTagName('optgroup');
	for (let i = 0; i < areasStates.length; i++) {
		const areaState = areasStates[i];
		console.log(areaState);
		// 3. check if the selected state equals to any states in the areas field
		if (selectedState != areaState.attributes.label.value) {
			console.log(selectedState === areaState.attributes.label.value);
			// 4. if not equal, set the optgroup hidden property to true
			areaState.hidden = true;
		} else {
			// 5. if equal, unhide
			areaState.hidden = false;
		}
	}
}
