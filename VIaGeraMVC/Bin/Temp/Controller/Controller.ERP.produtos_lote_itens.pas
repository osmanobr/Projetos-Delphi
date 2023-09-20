
unit Controller.ERP.produtos_lote;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPprodutoslote = class(TControllerBase, IController) 
  private 
    FDal : TViewERPprodutoslote;
    FModelList: TModelBaseList<TModelERPprodutoslote>; 
    FModel: TModelERPprodutoslote;
    procedure SetModel(const Value: TModelERPprodutoslote); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPprodutoslote>);

  public 
    property Model : TModelERPprodutoslote read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPprodutoslote> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPprodutoslote.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPprodutoslote>.Create;  
  Self.FModelList.Add(TModelERPprodutoslote.Create); 
  Self.FModel           := TModelERPprodutoslote.Create; 
  Self.FDal             := TDalERPprodutoslote.Create( Param, True ); 
end; 

procedure TControllerERPprodutoslote.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPprodutoslote.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPprodutoslote.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPprodutoslote.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPprodutoslote.SetModel(  
  const Value: TModelERPprodutoslote); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPprodutoslote.SetModelList(  
  const Value: TModelBaseList<TModelERPprodutoslote>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPprodutoslote.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPprodutoslote.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

