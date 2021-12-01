const modalTaskShow = () => {
  const taskTitle = document.querySelectorAll(".task-title-select");
  const closeModal = document.querySelectorAll(".close-modal");
  const timelineButtons = document.querySelectorAll(".timeline-task-point")


  if (taskTitle) {
    taskTitle.forEach((task) => {
      task.addEventListener("click", () => {
        task.nextElementSibling.classList.add("task-show-visible");
      });
    });
  }


  if (timelineButtons) {
    timelineButtons.forEach((dot) => {
      dot.addEventListener("click", (e) => {
        const taskId = e.target.dataset.taskId
        const tasks = document.querySelectorAll('.single-task')
        const task = [...tasks].find(task => task.dataset.id == taskId)
        if (task) {
          const thingy = task.children[1]
          thingy.classList.add("task-show-visible");
        }
      });
    });
  }



  if (closeModal) {
    closeModal.forEach((button) => {
      button.addEventListener("click", () => {
        if (
          button.parentNode.parentNode.parentNode.classList.contains(
            "task-show-visible"
          )
        ) {
          button.parentNode.parentNode.parentNode.classList.remove(
            "task-show-visible"
          );
        } else {
          button.parentNode.parentNode.style.display = "none";
        }
      });
    });
  }
};
export { modalTaskShow };
