function enviar() {

    //Recupere o valor da nova input pelo nome do id
    // Agora vá para o método fetch logo abaixo
    var nomeVar = ipt_nome.value;
    alert(nomeVar+'/'+ ipt_nome.value);
    console.log(nomeVar)
    var destinoVar = ipt_destino.value;
    var avaliacaoVar = ipt_avaliacao.value;
    var descVar = ipt_experiencia.value;

    if (nomeVar == "" || destinoVar == "" || avaliacaoVar == "" || descVar == "") {
       alert("Preencha todos os campos");
        return false;
    }
   
    // Enviando o valor da nova input
    fetch("/usuarios/enviar", {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            // crie um atributo que recebe o valor recuperado aqui
            // Agora vá para o arquivo routes/usuario.js
            nomeUserServer: nomeVar,
            destinoExpServer: destinoVar,
            avaliacaoServer : avaliacaoVar,
            expDescServer : descVar

        })
    }).then(function (resposta) {

        console.log("resposta: ", resposta);

        if (resposta.ok) {
            cardErro.style.display = "block";

            mensagem_erro.innerHTML = "formulário realizado com sucesso!";

           // limparFormulario();
        } else {
            throw ("Houve um erro ao tentar realizar o formulário!");
        }
    }).catch(function (resposta) {
        console.log(`#ERRO: ${resposta}`);
    });

    return false;
}


