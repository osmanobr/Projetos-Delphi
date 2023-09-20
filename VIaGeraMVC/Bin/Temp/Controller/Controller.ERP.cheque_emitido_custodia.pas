
unit Controller.ERP.cheque_emitido;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPchequeemitido = class(TControllerBase, IController) 
  private 
    FDal : TViewERPchequeemitido;
    FModelList: TModelBaseList<TModelERPchequeemitido>; 
    FModel: TModelERPchequeemitido;
    procedure SetModel(const Value: TModelERPchequeemitido); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPchequeemitido>);

  public 
    property Model : TModelERPchequeemitido read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPchequeemitido> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPchequeemitido.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPchequeemitido>.Create;  
  Self.FModelList.Add(TModelERPchequeemitido.Create); 
  Self.FModel           := TModelERPchequeemitido.Create; 
  Self.FDal             := TDalERPchequeemitido.Create( Param, True ); 
end; 

procedure TControllerERPchequeemitido.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPchequeemitido.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPchequeemitido.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPchequeemitido.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPchequeemitido.SetModel(  
  const Value: TModelERPchequeemitido); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPchequeemitido.SetModelList(  
  const Value: TModelBaseList<TModelERPchequeemitido>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPchequeemitido.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPchequeemitido.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

