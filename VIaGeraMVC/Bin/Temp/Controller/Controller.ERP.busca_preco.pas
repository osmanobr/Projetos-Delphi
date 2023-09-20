
unit Controller.ERP.bovino_pecas;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPbovinopecas = class(TControllerBase, IController) 
  private 
    FDal : TViewERPbovinopecas;
    FModelList: TModelBaseList<TModelERPbovinopecas>; 
    FModel: TModelERPbovinopecas;
    procedure SetModel(const Value: TModelERPbovinopecas); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPbovinopecas>);

  public 
    property Model : TModelERPbovinopecas read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPbovinopecas> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPbovinopecas.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPbovinopecas>.Create;  
  Self.FModelList.Add(TModelERPbovinopecas.Create); 
  Self.FModel           := TModelERPbovinopecas.Create; 
  Self.FDal             := TDalERPbovinopecas.Create( Param, True ); 
end; 

procedure TControllerERPbovinopecas.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPbovinopecas.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPbovinopecas.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPbovinopecas.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPbovinopecas.SetModel(  
  const Value: TModelERPbovinopecas); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPbovinopecas.SetModelList(  
  const Value: TModelBaseList<TModelERPbovinopecas>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPbovinopecas.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPbovinopecas.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

