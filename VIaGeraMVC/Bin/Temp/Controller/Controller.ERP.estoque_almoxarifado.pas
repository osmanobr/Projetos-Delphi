
unit Controller.ERP.estoque;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPestoque = class(TControllerBase, IController) 
  private 
    FDal : TViewERPestoque;
    FModelList: TModelBaseList<TModelERPestoque>; 
    FModel: TModelERPestoque;
    procedure SetModel(const Value: TModelERPestoque); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPestoque>);

  public 
    property Model : TModelERPestoque read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPestoque> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPestoque.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPestoque>.Create;  
  Self.FModelList.Add(TModelERPestoque.Create); 
  Self.FModel           := TModelERPestoque.Create; 
  Self.FDal             := TDalERPestoque.Create( Param, True ); 
end; 

procedure TControllerERPestoque.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPestoque.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPestoque.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPestoque.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPestoque.SetModel(  
  const Value: TModelERPestoque); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPestoque.SetModelList(  
  const Value: TModelBaseList<TModelERPestoque>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPestoque.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPestoque.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

