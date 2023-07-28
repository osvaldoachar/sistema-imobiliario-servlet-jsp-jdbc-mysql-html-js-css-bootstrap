const form = document.getElementById("register-form");
const imagemPreview = document.getElementById("imagem-preview");
const imagemInput = document.getElementById("imagem");

form.addEventListener("submit", function(event) {
  event.preventDefault();
  const nome = document.getElementById("nome").value;
  const email = document.getElementById("email").value;
  const senha = document.getElementById("senha").value;
  const imagem = imagemInput.files[0];
  const reader = new FileReader();

  reader.onload = function(event) {
    const imagemUrl = event.target.result;
    imagemPreview.innerHTML = `<img src="${imagemUrl}">`;
  };

  reader.readAsDataURL(imagem);

  // Adicione aqui o código para enviar os dados do formulário para o servidor
});

imagemInput.addEventListener("change", function(event) {
  const imagem = event.target.files[0];
  const reader = new FileReader();

  reader.onload = function(event) {
    const imagemUrl = event.target.result;
    imagemPreview.innerHTML = `<img src="${imagemUrl}">`;
  };

  reader.readAsDataURL(imagem);
});
