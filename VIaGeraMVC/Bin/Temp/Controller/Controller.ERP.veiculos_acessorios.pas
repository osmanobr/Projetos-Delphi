
unit Controller.ERP.veiculos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPveiculos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPveiculos;
    FModelList: TModelBaseList<TModelERPveiculos>; 
    FModel: TModelERPveiculos;
    procedure SetModel(const Value: TModelERPveiculos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPveiculos>);

  public 
    property Model : TModelERPveiculos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPveiculos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPveiculos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPveiculos>.Create;  
  Self.FModelList.Add(TModelERPveiculos.Create); 
  Self.FModel           := TModelERPveiculos.Create; 
  Self.FDal             := TDalERPveiculos.Create( Param, True ); 
end; 

procedure TControllerERPveiculos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPveiculos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPveiculos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPveiculos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPveiculos.SetModel(  
  const Value: TModelERPveiculos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPveiculos.SetModelList(  
  const Value: TModelBaseList<TModelERPveiculos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPveiculos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPveiculos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

