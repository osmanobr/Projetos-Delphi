
unit Controller.ERP.cest_itens;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcestitens = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcestitens;
    FModelList: TModelBaseList<TModelERPcestitens>; 
    FModel: TModelERPcestitens;
    procedure SetModel(const Value: TModelERPcestitens); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcestitens>);

  public 
    property Model : TModelERPcestitens read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcestitens> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcestitens.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcestitens>.Create;  
  Self.FModelList.Add(TModelERPcestitens.Create); 
  Self.FModel           := TModelERPcestitens.Create; 
  Self.FDal             := TDalERPcestitens.Create( Param, True ); 
end; 

procedure TControllerERPcestitens.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcestitens.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcestitens.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcestitens.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcestitens.SetModel(  
  const Value: TModelERPcestitens); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcestitens.SetModelList(  
  const Value: TModelBaseList<TModelERPcestitens>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcestitens.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcestitens.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

