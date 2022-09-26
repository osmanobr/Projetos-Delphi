program cte;

uses
  Forms,
  MidasLib,
  ufrmDefault in '..\src_comum\ufrmDefault.pas' {frmDefault},
  ufrmDefaultClean in '..\src_comum\ufrmDefaultClean.pas' {frmDefaultClean},
  ufrmDefaultConsulta in '..\src_comum\ufrmDefaultConsulta.pas' {frmDefaultConsulta},
  ufrmDefaultCadastro in '..\src_comum\ufrmDefaultCadastro.pas' {frmDefaultCadastro},
  ufrmBACKUP in '..\src_comum\ufrmBACKUP.pas' {frmBACKUP},
  ufrmMENSAGEMespera in '..\src_comum\ufrmMENSAGEMespera.pas' {frmMENSAGEMespera},
  ufrmEMPRESAScadastro in '..\src_comum\ufrmEMPRESAScadastro.pas' {frmEMPRESAScadastro},
  ufrmEMPRESASmanutencao in '..\src_comum\ufrmEMPRESASmanutencao.pas' {frmEMPRESASmanutencao},
  ufrmPESSOAScadastro in '..\src_comum\ufrmPESSOAScadastro.pas' {frmPESSOAScadastro},
  ufrmPESSOASmanutencao in '..\src_comum\ufrmPESSOASmanutencao.pas' {frmPESSOASmanutencao},
  uclassPESSOA in '..\src_comum\class\uclassPESSOA.pas',
  uclassEMPRESA in '..\src_comum\class\uclassEMPRESA.pas',
  ufuncoes in '..\src_comum\unit\ufuncoes.pas',
  ufrmPrincipal in 'ufrmPrincipal.pas' {frmPrincipal},
  udtmCTE in 'dm\udtmCTE.pas' {dtmCTe: TDataModule},
  ufrmCTEcancela in 'ufrmCTEcancela.pas' {frmCTEcancela},
  ufrmCTEinutilizacao in 'ufrmCTEinutilizacao.pas' {frmCTEinutilizacao},
  ufrmCERTIFICADOconfig in '..\src_comum\ufrmCERTIFICADOconfig.pas' {frmCERTIFICADOconfig},
  udtmDefault in '..\src_comum\dm\udtmDefault.pas' {dtmDefault: TDataModule},
  uclassCTE in 'class\uclassCTE.pas',
  ufrmCTemanutencao in 'ufrmCTemanutencao.pas' {frmCTeManutencao},
  ufrmCTeCadastro in 'ufrmCTeCadastro.pas' {frmCTeCadastro},
  ufrmCTEveiculosnovosCADASTRO in 'ufrmCTEveiculosnovosCADASTRO.pas' {frmCteVeiculosNovosCadastro},
  ufrmCTEordemcoletaCADASTRO in 'ufrmCTEordemcoletaCADASTRO.pas' {frmCteOrdemColetaCadastro},
  ufrmCTEDOCantCADASTRO in 'ufrmCTEDOCantCADASTRO.pas' {frmCteDOCANTCadastro},
  ufrmCTEinfcargaCADASTRO in 'ufrmCTEinfcargaCADASTRO.pas' {frmCteInfCargaCadastro},
  uclassPRODUTO in '..\src_comum\class\uclassPRODUTO.pas',
  uclassCONFIGini in '..\src_comum\class\uclassCONFIGini.pas',
  uclassLOG in '..\src_comum\class\uclassLOG.pas',
  uclassTRANSPORTADORA in '..\src_comum\class\uclassTRANSPORTADORA.pas',
  ufrmCTEnfeCADASTRO in 'ufrmCTEnfeCADASTRO.pas' {frmCteNFeCadastro},
  ufrmCTEcartacorrecao in 'ufrmCTEcartacorrecao.pas' {frmCTEcartacorrecao},
  ufrmXMLgeracao in 'ufrmXMLgeracao.pas' {frmXMLgeracao},
  ufrmENVIARemail in 'ufrmENVIARemail.pas' {frmENVIARemail},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;

  TStyleManager.TrySetStyle('Luna');
  Application.CreateForm(TdtmDefault, dtmDefault);
  Application.CreateForm(TdtmCTe, dtmCTe);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmXMLgeracao, frmXMLgeracao);
  Application.CreateForm(TfrmENVIARemail, frmENVIARemail);
  Application.Run;

end.
