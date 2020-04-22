const states_field = document.getElementById('state_search');
const areas_field = document.getElementById('districts_search');

states_field.addEventListener('change', filterArea);

function filterArea() {
	console.log('working');

	const selectedState = states_field.value;
	console.log(selectedState);

	const areasStates = areas_field.getElementsByTagName('optgroup');
	for (let i = 0; i < areasStates.length; i++) {
		const areaState = areasStates[i];
		console.log(areaState);
		if (selectedState != areaState.attributes.label.value) {
			console.log(selectedState === areaState.attributes.label.value);
			areaState.disabled = true;
			console.log(areaState.disabled);
		} else {
			areaState.disabled = false;
			console.log(areaState.disabled);
		}
	}
}
