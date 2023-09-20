
unit Controller.ERP.deptemp;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPdeptemp = class(TControllerBase, IController) 
  private 
    FDal : TViewERPdeptemp;
    FModelList: TModelBaseList<TModelERPdeptemp>; 
    FModel: TModelERPdeptemp;
    procedure SetModel(const Value: TModelERPdeptemp); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPdeptemp>);

  public 
    property Model : TModelERPdeptemp read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPdeptemp> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPdeptemp.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPdeptemp>.Create;  
  Self.FModelList.Add(TModelERPdeptemp.Create); 
  Self.FModel           := TModelERPdeptemp.Create; 
  Self.FDal             := TDalERPdeptemp.Create( Param, True ); 
end; 

procedure TControllerERPdeptemp.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPdeptemp.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPdeptemp.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPdeptemp.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPdeptemp.SetModel(  
  const Value: TModelERPdeptemp); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPdeptemp.SetModelList(  
  const Value: TModelBaseList<TModelERPdeptemp>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPdeptemp.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPdeptemp.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

