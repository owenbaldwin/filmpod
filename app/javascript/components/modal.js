
const modalPopUp = () => {
  const newTaskButton = document.querySelector(".new-task-btn")
  const modalBox = document.querySelector(".modal-container-task-new-card")
  const modalContainer = document.querySelector(".modal-container")
  const newTaskBtn = document.querySelector(".new-film-btn")

  newTaskButton.addEventListener("click", () => {
    modalBox.classList.add("modal-show")
    modalContainer.style.display = "flex"
  })

  newTaskBtn.addEventListener("click", () => {
    modalBox.classList.remove("modal-show")
    modalContainer.style.display = "none"
  } )
}


export { modalPopUp }
