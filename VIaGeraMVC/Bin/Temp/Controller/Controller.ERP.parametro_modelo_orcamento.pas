
unit Controller.ERP.palmpedido;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPpalmpedido = class(TControllerBase, IController) 
  private 
    FDal : TViewERPpalmpedido;
    FModelList: TModelBaseList<TModelERPpalmpedido>; 
    FModel: TModelERPpalmpedido;
    procedure SetModel(const Value: TModelERPpalmpedido); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPpalmpedido>);

  public 
    property Model : TModelERPpalmpedido read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPpalmpedido> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPpalmpedido.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPpalmpedido>.Create;  
  Self.FModelList.Add(TModelERPpalmpedido.Create); 
  Self.FModel           := TModelERPpalmpedido.Create; 
  Self.FDal             := TDalERPpalmpedido.Create( Param, True ); 
end; 

procedure TControllerERPpalmpedido.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPpalmpedido.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPpalmpedido.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPpalmpedido.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPpalmpedido.SetModel(  
  const Value: TModelERPpalmpedido); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPpalmpedido.SetModelList(  
  const Value: TModelBaseList<TModelERPpalmpedido>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPpalmpedido.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPpalmpedido.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

