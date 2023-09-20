
unit Controller.ERP.venda_notas_canceladas;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPvendanotascanceladas = class(TControllerBase, IController) 
  private 
    FDal : TViewERPvendanotascanceladas;
    FModelList: TModelBaseList<TModelERPvendanotascanceladas>; 
    FModel: TModelERPvendanotascanceladas;
    procedure SetModel(const Value: TModelERPvendanotascanceladas); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPvendanotascanceladas>);

  public 
    property Model : TModelERPvendanotascanceladas read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPvendanotascanceladas> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPvendanotascanceladas.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPvendanotascanceladas>.Create;  
  Self.FModelList.Add(TModelERPvendanotascanceladas.Create); 
  Self.FModel           := TModelERPvendanotascanceladas.Create; 
  Self.FDal             := TDalERPvendanotascanceladas.Create( Param, True ); 
end; 

procedure TControllerERPvendanotascanceladas.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPvendanotascanceladas.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPvendanotascanceladas.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPvendanotascanceladas.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPvendanotascanceladas.SetModel(  
  const Value: TModelERPvendanotascanceladas); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPvendanotascanceladas.SetModelList(  
  const Value: TModelBaseList<TModelERPvendanotascanceladas>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPvendanotascanceladas.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPvendanotascanceladas.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

