
unit Controller.ERP.cheque_recebido;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPchequerecebido = class(TControllerBase, IController) 
  private 
    FDal : TViewERPchequerecebido;
    FModelList: TModelBaseList<TModelERPchequerecebido>; 
    FModel: TModelERPchequerecebido;
    procedure SetModel(const Value: TModelERPchequerecebido); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPchequerecebido>);

  public 
    property Model : TModelERPchequerecebido read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPchequerecebido> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPchequerecebido.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPchequerecebido>.Create;  
  Self.FModelList.Add(TModelERPchequerecebido.Create); 
  Self.FModel           := TModelERPchequerecebido.Create; 
  Self.FDal             := TDalERPchequerecebido.Create( Param, True ); 
end; 

procedure TControllerERPchequerecebido.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPchequerecebido.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPchequerecebido.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPchequerecebido.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPchequerecebido.SetModel(  
  const Value: TModelERPchequerecebido); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPchequerecebido.SetModelList(  
  const Value: TModelBaseList<TModelERPchequerecebido>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPchequerecebido.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPchequerecebido.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

