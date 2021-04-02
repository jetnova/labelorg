const insertCreatorFields = () => {
  const creators = document.querySelector('.creators');
  const creator = document.querySelector('.creator').outerHTML;
  creators.insertAdjacentHTML('beforeend', creator);
};

const addCreator = () => {
  console.log('in add creator');
  const addCreatorBtn = document.getElementById('add-creator');
  addCreatorBtn.addEventListener('click', insertCreatorFields);
};

export { addCreator };
