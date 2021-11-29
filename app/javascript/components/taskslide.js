const taskSlide = () => {
window.onload = () => {
  const anchors = document.querySelectorAll('a');
  console.log(anchors)
  const transition_el = document.querySelector('.transition');

  setTimeout(() => {
    transition_el.classList.remove('e');
  }, 500);

  for (let i = 0; i < anchors.length; i++) {
    const anchor = anchors[i];

    anchor.addEventListener('click', e => {
      e.preventDefault();
      let target = e.target.href;

      console.log(transition_el);

      transition_el.classList.add('is-active');

      console.log(transition_el);

      setInterval(() => {
        window.location.href = target;
      }, 500);
    })
  }
}
}


export { taskSlide }