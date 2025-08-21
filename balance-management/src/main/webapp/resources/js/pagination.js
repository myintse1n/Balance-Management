document.addEventListener('DOMContentLoaded',()=>{
	
	const pageInput = document.getElementById('pageInput')
	const sizeInput = document.getElementById('sizeInput')
	const pageSearchForm = document.getElementById('pageSearchForm')
	const sizeSelect = document.getElementById('sizeSelect')
	
	
	if(pageSearchForm && pageInput && sizeInput ){
		//size select value change
		sizeSelect.addEventListener('change',()=>{
			sizeInput.value = sizeSelect.value
			pageInput.value = '0'
			pageSearchForm.submit()
		})
	}
	
	// Page Link OnClick Event
			Array.from(document.getElementsByClassName('pageLink')).forEach(pageLink => {
				pageLink.addEventListener('click', (event) => {
					event.preventDefault()
					console.log(pageLink.dataset)
					pageInput.value = pageLink.dataset['pageNumber']
					pageSearchForm.submit()
				})
			})	
	
})