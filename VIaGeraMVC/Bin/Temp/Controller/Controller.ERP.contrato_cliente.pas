
unit Controller.ERP.contrato;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontrato = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontrato;
    FModelList: TModelBaseList<TModelERPcontrato>; 
    FModel: TModelERPcontrato;
    procedure SetModel(const Value: TModelERPcontrato); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontrato>);

  public 
    property Model : TModelERPcontrato read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontrato> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontrato.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontrato>.Create;  
  Self.FModelList.Add(TModelERPcontrato.Create); 
  Self.FModel           := TModelERPcontrato.Create; 
  Self.FDal             := TDalERPcontrato.Create( Param, True ); 
end; 

procedure TControllerERPcontrato.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontrato.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontrato.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontrato.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontrato.SetModel(  
  const Value: TModelERPcontrato); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontrato.SetModelList(  
  const Value: TModelBaseList<TModelERPcontrato>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontrato.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontrato.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

