unit SweetAlerts;

interface
  function swalPrompt(pTitulo, pTexto, pEditDest : String;
                      pBotaoSim  : String = 'Sim';
                      pBotaoNao  : String = 'N�o';
                      pEventoSim : String = 'BTNFAZERLOGOUT'): String;

  function swalConfirm(pTitulo, pTexto : String;
                       pTipo      : String = 'success';
                       pBotaoSim  : String = 'Sim';
                       pBotaoNao  : String = 'N�o';
                       pEventoSim : String = 'BTNFAZERLOGOUT';
                       pEventoNao : String = 'BTNREFRESH'): String;

  function swalAlert(pTitulo, pTexto: String): String;
  function swalError(pTitulo, pTexto: String): String;
  function swalSuccess(pTitulo, pTexto: String): String;

implementation

function swalPrompt(pTitulo, pTexto, pEditDest : String;
                    pBotaoSim  : String = 'Sim';
                    pBotaoNao  : String = 'N�o';
                    pEventoSim : String = 'BTNFAZERLOGOUT'): String;
var
  strAux : String;
begin
  strAux := 'swal.fire({ ';
  strAux := strAux + '    title: "' + pTitulo + '", ';
  strAux := strAux + '    text: "' + pTexto + '", ';
  strAux := strAux + '    type: "input", ';
  strAux := strAux + '    showCancelButton: true, ';
  strAux := strAux + '    closeOnConfirm: true,';
  strAux := strAux + '    confirmButtonText: "' + pBotaoSim + '", ';
  strAux := strAux + '    cancelButtonText: "' + pBotaoNao + '", ';
  strAux := strAux + '    inputPlaceholder: "Digite algo"';
  strAux := strAux + '  }, function (inputValue) {';
  strAux := strAux + 'if (inputValue === false) return false;';
  strAux := strAux + 'if (inputValue === "") {';
  strAux := strAux + '  swal("Aten��o", "Digite alguma coisa!","error");';
  strAux := strAux + '  return false';
  strAux := strAux + '}';
  strAux := strAux + 'document.getElementById(''' +   pEditDest + ''').value= inputValue;';
  strAux := strAux + 'AddChangedControl(''' + pEditDest + ''');';
  strAux := strAux + '});';
  Result := strAux;
end;

function swalConfirm(pTitulo, pTexto : String;
                     pTipo      : String = 'success';
                     pBotaoSim  : String = 'Sim';
                     pBotaoNao  : String = 'N�o';
                     pEventoSim : String = 'BTNFAZERLOGOUT';
                     pEventoNao : String = 'BTNREFRESH'): String;
var
  strAux : String;
begin
  strAux := 'swal.fire({ ';
  strAux := strAux + '    title: "' + pTitulo + '", ';
  strAux := strAux + '    text: "' + pTexto + '", ';
  strAux := strAux + '    type: "' + pTipo+'", ';
  strAux := strAux + '    showCancelButton: ';

  if (pBotaoNao = '') then
    strAux := strAux + '     false, '
  else
    strAux := strAux + '     true, ';

  strAux := strAux + '    confirmButtonColor: "#DD6B55", ';
  strAux := strAux + '    confirmButtonText: "' + pBotaoSim + '", ';
  strAux := strAux + '    cancelButtonText: "' + pBotaoNao + '", ';
  strAux := strAux + '    closeOnConfirm: true, ';
  strAux := strAux + '    closeOnCancel: true ';
  strAux := strAux + '  }, function(isConfirm) { ';
  strAux := strAux + '    if (isConfirm) { ';
  strAux := strAux + '      ' + pEventoSim + '.click(); ';
  strAux := strAux + '    } ';
  strAux := strAux + '    else { ';
  strAux := strAux + '      ' + pEventoNao + '.click(); ';
  strAux := strAux + '    } ';
  strAux := strAux + '  });';

  Result := strAux;
end;

function swalAlert(pTitulo, pTexto: String): String;
var
  strAux : String;
begin
  strAux := 'swal.fire("' + pTitulo + '", "' + pTexto + '", "warning");';
  Result := strAux;
end;

function swalError(pTitulo, pTexto: String): String;
var
  strAux : String;
begin
  strAux := 'swal.fire("' + pTitulo + '", "' + pTexto + '", "error");';
  Result := strAux;
end;

function swalSuccess(pTitulo, pTexto: String): String;
var
  strAux : String;
begin
  strAux := 'swal.fire("' + pTitulo + '", "' + pTexto + '", "success");';
  Result := strAux;
end;

end.
