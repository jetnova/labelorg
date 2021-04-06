import { initSelect2 } from './init_select2';

const addCreator = () => {
  document.querySelector('.add-fields').addEventListener('click', () => {
    document.querySelector('.hidden').classList.remove('hidden');
    initSelect2();
  });
};

export { addCreator };
