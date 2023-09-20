
unit Controller.ERP.venda;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPvenda = class(TControllerBase, IController) 
  private 
    FDal : TViewERPvenda;
    FModelList: TModelBaseList<TModelERPvenda>; 
    FModel: TModelERPvenda;
    procedure SetModel(const Value: TModelERPvenda); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPvenda>);

  public 
    property Model : TModelERPvenda read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPvenda> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPvenda.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPvenda>.Create;  
  Self.FModelList.Add(TModelERPvenda.Create); 
  Self.FModel           := TModelERPvenda.Create; 
  Self.FDal             := TDalERPvenda.Create( Param, True ); 
end; 

procedure TControllerERPvenda.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPvenda.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPvenda.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPvenda.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPvenda.SetModel(  
  const Value: TModelERPvenda); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPvenda.SetModelList(  
  const Value: TModelBaseList<TModelERPvenda>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPvenda.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPvenda.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

