const toggleButton = document.getElementsByClassName('toggle-button')[0]
const navbarLinks = document.getElementsByClassName('navbar-links')[0]

toggleButton.addEventListener('click', () => {
  navbarLinks.classList.toggle('active');
})


function showDesc(taskID) {
  const descID = ['desc_', taskID].join('');
  const taskInfoID = ['task-info_', taskID].join('');
  const desc = document.getElementById(descID);
  const taskInfo = document.getElementById(taskInfoID);
  desc.toggleAttribute('hidden');
  taskInfo.classList.toggle('data-divider');
  desc.classList.toggle('data-divider');
}

function editTask(taskID){
  console.log(taskID);
}

function httpGet(theUrl)
{
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.open( "GET", theUrl, false ); // false for synchronous request
    xmlHttp.send( null );
    return xmlHttp.responseText;
}

function checboxToggle(box){
  var crrntStatus = box.dataset.status;
  var newStatus = 1- crrntStatus;
  const idWord = box.getAttribute('id');
  var id = idWord.split("_")[1]
  var link = `./toggle-checkbox.php?id=${id}&toggle=${newStatus}`;
  // var reponse = httpGet(link)
  window.location.href = link;
  console.log(id, newStatus);


}