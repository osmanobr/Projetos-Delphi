
unit Controller.ERP.ncm_substituido;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPncmsubstituido = class(TControllerBase, IController) 
  private 
    FDal : TViewERPncmsubstituido;
    FModelList: TModelBaseList<TModelERPncmsubstituido>; 
    FModel: TModelERPncmsubstituido;
    procedure SetModel(const Value: TModelERPncmsubstituido); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPncmsubstituido>);

  public 
    property Model : TModelERPncmsubstituido read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPncmsubstituido> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPncmsubstituido.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPncmsubstituido>.Create;  
  Self.FModelList.Add(TModelERPncmsubstituido.Create); 
  Self.FModel           := TModelERPncmsubstituido.Create; 
  Self.FDal             := TDalERPncmsubstituido.Create( Param, True ); 
end; 

procedure TControllerERPncmsubstituido.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPncmsubstituido.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPncmsubstituido.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPncmsubstituido.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPncmsubstituido.SetModel(  
  const Value: TModelERPncmsubstituido); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPncmsubstituido.SetModelList(  
  const Value: TModelBaseList<TModelERPncmsubstituido>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPncmsubstituido.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPncmsubstituido.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

