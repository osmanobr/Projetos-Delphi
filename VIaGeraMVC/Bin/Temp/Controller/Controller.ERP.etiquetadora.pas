
unit Controller.ERP.etiqueta;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPetiqueta = class(TControllerBase, IController) 
  private 
    FDal : TViewERPetiqueta;
    FModelList: TModelBaseList<TModelERPetiqueta>; 
    FModel: TModelERPetiqueta;
    procedure SetModel(const Value: TModelERPetiqueta); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPetiqueta>);

  public 
    property Model : TModelERPetiqueta read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPetiqueta> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPetiqueta.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPetiqueta>.Create;  
  Self.FModelList.Add(TModelERPetiqueta.Create); 
  Self.FModel           := TModelERPetiqueta.Create; 
  Self.FDal             := TDalERPetiqueta.Create( Param, True ); 
end; 

procedure TControllerERPetiqueta.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPetiqueta.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPetiqueta.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPetiqueta.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPetiqueta.SetModel(  
  const Value: TModelERPetiqueta); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPetiqueta.SetModelList(  
  const Value: TModelBaseList<TModelERPetiqueta>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPetiqueta.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPetiqueta.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

