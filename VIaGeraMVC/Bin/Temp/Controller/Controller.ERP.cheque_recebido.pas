
unit Controller.ERP.cheque_emitido_custodia;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPchequeemitidocustodia = class(TControllerBase, IController) 
  private 
    FDal : TViewERPchequeemitidocustodia;
    FModelList: TModelBaseList<TModelERPchequeemitidocustodia>; 
    FModel: TModelERPchequeemitidocustodia;
    procedure SetModel(const Value: TModelERPchequeemitidocustodia); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPchequeemitidocustodia>);

  public 
    property Model : TModelERPchequeemitidocustodia read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPchequeemitidocustodia> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPchequeemitidocustodia.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPchequeemitidocustodia>.Create;  
  Self.FModelList.Add(TModelERPchequeemitidocustodia.Create); 
  Self.FModel           := TModelERPchequeemitidocustodia.Create; 
  Self.FDal             := TDalERPchequeemitidocustodia.Create( Param, True ); 
end; 

procedure TControllerERPchequeemitidocustodia.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPchequeemitidocustodia.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPchequeemitidocustodia.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPchequeemitidocustodia.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPchequeemitidocustodia.SetModel(  
  const Value: TModelERPchequeemitidocustodia); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPchequeemitidocustodia.SetModelList(  
  const Value: TModelBaseList<TModelERPchequeemitidocustodia>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPchequeemitidocustodia.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPchequeemitidocustodia.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

