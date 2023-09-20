
unit Controller.ERP.uf;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPuf = class(TControllerBase, IController) 
  private 
    FDal : TViewERPuf;
    FModelList: TModelBaseList<TModelERPuf>; 
    FModel: TModelERPuf;
    procedure SetModel(const Value: TModelERPuf); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPuf>);

  public 
    property Model : TModelERPuf read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPuf> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPuf.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPuf>.Create;  
  Self.FModelList.Add(TModelERPuf.Create); 
  Self.FModel           := TModelERPuf.Create; 
  Self.FDal             := TDalERPuf.Create( Param, True ); 
end; 

procedure TControllerERPuf.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPuf.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPuf.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPuf.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPuf.SetModel(  
  const Value: TModelERPuf); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPuf.SetModelList(  
  const Value: TModelBaseList<TModelERPuf>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPuf.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPuf.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

