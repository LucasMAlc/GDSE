function AbrirXML()
{
   var parser, xmlDoc;

   var textXML = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" +
    "<clientes>\n" +
    "   <cliente>\n" +
    "       <nome>Fulano</nome>\n" +
    "       <telefone>1234-5678</telefone>\n" +
    "       <cidade>Niterói</cidade>\n" +
    "       <estado>RJ</estado>\n" +
    "       <credito>200.00</credito>\n" +
    "   </cliente>\n" +
    "   <cliente>\n" +
    "       <nome>Beltrano</nome>\n" +
    "       <telefone>8765-4321</telefone>\n" +
    "       <cidade>Rio de Janeiro</cidade>\n" +
    "       <estado>RJ</estado>\n" +
    "       <credito>400.00</credito>\n" +
    "  </cliente>\n" +
    "  <cliente>\n" +
    "       <nome>Cicrano</nome>\n" +
    "       <telefone>1234-8765</telefone>\n" +
    "       <cidade>Nova Friburgo</cidade>\n" +
    "       <estado>RJ</estado>\n" +
    "       <credito>300.00</credito>\n" +
    "   </cliente>\n" +
    "   <cliente>\n" +
    "       <nome>José</nome>\n" +
    "       <telefone>4321-5678</telefone>\n" +
    "       <cidade>Campos do Jordão</cidade>\n" +
    "       <estado>SP</estado>\n" +
    "       <credito>350.00</credito>\n" +
    "   </cliente>\n" +
    "   <cliente>\n" +
    "       <nome>Maria</nome>\n" +
    "       <telefone>1243-5687</telefone>\n" +
    "       <cidade>São Paulo</cidade>\n" +
    "       <estado>SP</estado>\n" +
    "       <credito>400.00</credito>\n" +
    "   </cliente>\n" +
    "   <cliente>\n" +
    "       <nome>Antônio</nome>\n" +
    "       <telefone>6587-2143</telefone>\n" +
    "           <cidade>Brasília</cidade>\n" +
    "       <estado>DF</estado>\n" +
    "        <credito>500.00</credito>\n" +
    "    </cliente>\n" +
    "</clientes>"

   alert("Documento XML (tabela.xml):\n\n"+textXML);

   parser = new DOMParser();

   xmlDoc = parser.parseFromString(textXML,"text/xml");

   var nome="";
   var telefone="";
   var estado="";
   var cidade="";
   var credito="";
   var cliente=xmlDoc.getElementsByTagName("cliente"); 
   for(i = 0 ; i<cliente.length; i++)
   {
      nome = nome + xmlDoc.getElementsByTagName("nome")[i].childNodes[0].nodeValue + "<br>";
      telefone = telefone + xmlDoc.getElementsByTagName("telefone")[i].childNodes[0].nodeValue + "<br>";
      estado = estado + xmlDoc.getElementsByTagName("estado")[i].childNodes[0].nodeValue + "<br>";
      cidade = cidade + xmlDoc.getElementsByTagName("cidade")[i].childNodes[0].nodeValue + "<br>";
      credito = credito + xmlDoc.getElementsByTagName("credito")[i].childNodes[0].nodeValue + "<br>";
   }

   document.getElementById("NomeCliente").innerHTML= nome; 
   document.getElementById("TelefoneCliente").innerHTML= telefone;
   document.getElementById("EstadoCliente").innerHTML= estado;
   document.getElementById("CidadeCliente").innerHTML= cidade;
   document.getElementById("CreditoCliente").innerHTML= credito;
}