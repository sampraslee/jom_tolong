// const states_field = document.getElementById('state_search');
// const areas_field = document.getElementById('districts_search');
var states_field = $('select#state_search');
var areas_field = $('select#districts_search');

// states_field.addEventListener('change', filterArea);
states_field.change(filterArea);

function filterArea() {
	console.log('working');

	var selectedState = $(states_field).find(':selected').text();
	console.log(selectedState);

	// const areasStates = areas_field.getElementsByTagName('optgroup');
	var areasStates = $('select#districts_search optgroup');

	for (let i = 0; i < areasStates.length; i++) {
		const areaState = areasStates[i];
		console.log(areaState);
		if (selectedState != areaState.attributes.label.value) {
			console.log(selectedState === areaState.attributes.label.value);
			$(areaState).hide();
		} else {
			$(areaState).show();
		}
	}
}
