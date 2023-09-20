
unit Controller.ERP.receita_agro;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPreceitaagro = class(TControllerBase, IController) 
  private 
    FDal : TViewERPreceitaagro;
    FModelList: TModelBaseList<TModelERPreceitaagro>; 
    FModel: TModelERPreceitaagro;
    procedure SetModel(const Value: TModelERPreceitaagro); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPreceitaagro>);

  public 
    property Model : TModelERPreceitaagro read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPreceitaagro> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPreceitaagro.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPreceitaagro>.Create;  
  Self.FModelList.Add(TModelERPreceitaagro.Create); 
  Self.FModel           := TModelERPreceitaagro.Create; 
  Self.FDal             := TDalERPreceitaagro.Create( Param, True ); 
end; 

procedure TControllerERPreceitaagro.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPreceitaagro.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPreceitaagro.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPreceitaagro.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPreceitaagro.SetModel(  
  const Value: TModelERPreceitaagro); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPreceitaagro.SetModelList(  
  const Value: TModelBaseList<TModelERPreceitaagro>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPreceitaagro.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPreceitaagro.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

