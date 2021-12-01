
const modalPopUp = () => {
  const newTaskButton = document.querySelector("#new-task-btn")
  const modalBox = document.querySelector(".modal-container-task-new-card")
  const modalContainer = document.querySelector(".modal-container")
  const newTaskBtn = document.querySelector(".new-film-btn")
  const closeButton = document.querySelector(".closeButton")

  if(newTaskButton){
    newTaskButton.addEventListener("click", () => {
      modalBox.classList.add("modal-show")
      modalContainer.style.display = "flex"
    })
  }

  if(newTaskBtn){
    newTaskBtn.addEventListener("click", () => {
      modalBox.classList.remove("modal-show")
      modalContainer.style.display = "none"
    })
  }

  if(closeButton){
    closeButton.addEventListener("click", () => {
      modalBox.classList.remove("modal-show")
      modalContainer.style.display = "none"
    })
  }
}


export { modalPopUp }
