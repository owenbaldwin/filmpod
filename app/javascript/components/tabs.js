const tabSelect = () => {
  const location = window.location.pathname.split("/").pop()
  const taskLocation = window.location.pathname.split("/")
  if(location && location === "moodboard") {
    const moodboardTab = document.querySelector(".tab-moodboard")
    if(moodboardTab){
      moodboardTab.style.border = "2px solid Gainsboro "
      // moodboardTab.style.backgroundColor = "Gray";
    }
  }

  if(taskLocation && taskLocation.length === 3){
    const taskTab = document.querySelector(".tab-item-left")
    if(taskTab){
      taskTab.style.border = "2px solid Gainsboro "
      // taskTab.style.backgroundColor = "Gray";
    }
  }
}

export {tabSelect}
