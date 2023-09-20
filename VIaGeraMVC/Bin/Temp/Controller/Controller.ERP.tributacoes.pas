
unit Controller.ERP.transportadora;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPtransportadora = class(TControllerBase, IController) 
  private 
    FDal : TViewERPtransportadora;
    FModelList: TModelBaseList<TModelERPtransportadora>; 
    FModel: TModelERPtransportadora;
    procedure SetModel(const Value: TModelERPtransportadora); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPtransportadora>);

  public 
    property Model : TModelERPtransportadora read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPtransportadora> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPtransportadora.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPtransportadora>.Create;  
  Self.FModelList.Add(TModelERPtransportadora.Create); 
  Self.FModel           := TModelERPtransportadora.Create; 
  Self.FDal             := TDalERPtransportadora.Create( Param, True ); 
end; 

procedure TControllerERPtransportadora.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPtransportadora.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPtransportadora.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPtransportadora.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPtransportadora.SetModel(  
  const Value: TModelERPtransportadora); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPtransportadora.SetModelList(  
  const Value: TModelBaseList<TModelERPtransportadora>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPtransportadora.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPtransportadora.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

