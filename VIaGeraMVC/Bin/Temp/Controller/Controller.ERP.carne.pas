
unit Controller.ERP.carga_venda;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcargavenda = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcargavenda;
    FModelList: TModelBaseList<TModelERPcargavenda>; 
    FModel: TModelERPcargavenda;
    procedure SetModel(const Value: TModelERPcargavenda); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcargavenda>);

  public 
    property Model : TModelERPcargavenda read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcargavenda> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcargavenda.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcargavenda>.Create;  
  Self.FModelList.Add(TModelERPcargavenda.Create); 
  Self.FModel           := TModelERPcargavenda.Create; 
  Self.FDal             := TDalERPcargavenda.Create( Param, True ); 
end; 

procedure TControllerERPcargavenda.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcargavenda.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcargavenda.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcargavenda.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcargavenda.SetModel(  
  const Value: TModelERPcargavenda); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcargavenda.SetModelList(  
  const Value: TModelBaseList<TModelERPcargavenda>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcargavenda.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcargavenda.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

