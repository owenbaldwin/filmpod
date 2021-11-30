const modalTaskShow = () => {
  const taskTitle = document.querySelectorAll(".task-title-select");
  const closeModal = document.querySelectorAll(".close-modal");
  if (taskTitle) {
    taskTitle.forEach((task) => {
      task.addEventListener("click", () => {
        task.nextElementSibling.classList.add("task-show-visible");
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
