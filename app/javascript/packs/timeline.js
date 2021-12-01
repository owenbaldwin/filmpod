let points = document.querySelectorAll(".timeline-task-point")

points.forEach ((point) => {
  point.addEventListener('mouseover', (e) => {
    const label = e.target.nextElementSibling
    label.classList.add('timeline-title-with-opacity')
  })
  point.addEventListener('mouseout', (e) => {
    const label = e.target.nextElementSibling
    label.classList.remove('timeline-title-with-opacity')
  })

  // point.addEventListener('click', (e) => {


  //   // find the card
  //     // find all teh cards (querySelectoe)
  //   // trigger the modal
  // })




// selector.addEventListener('event', (event) => {
//   // do thing with event
// }

// selector.addEventListener('event', callbackFunction)

// // old school
// function Zoe() {

// }
// // arrrow function
// const Zoe = () => {

})
