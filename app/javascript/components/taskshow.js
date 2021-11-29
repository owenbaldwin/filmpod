
const modalTaskShow = () => {
  const taskTitle = document.querySelectorAll(".task-title-select")

  taskTitle.forEach( task => {
    task.addEventListener("click", () => {
      console.log(task.nextElementSibling)
      task.nextElementSibling.classList.toggle("task-container-show")
    })
  })
}


export { modalTaskShow }
