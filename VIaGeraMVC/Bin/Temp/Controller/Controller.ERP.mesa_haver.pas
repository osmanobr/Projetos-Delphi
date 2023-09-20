
unit Controller.ERP.mesa_forma;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPmesaforma = class(TControllerBase, IController) 
  private 
    FDal : TViewERPmesaforma;
    FModelList: TModelBaseList<TModelERPmesaforma>; 
    FModel: TModelERPmesaforma;
    procedure SetModel(const Value: TModelERPmesaforma); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPmesaforma>);

  public 
    property Model : TModelERPmesaforma read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPmesaforma> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPmesaforma.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPmesaforma>.Create;  
  Self.FModelList.Add(TModelERPmesaforma.Create); 
  Self.FModel           := TModelERPmesaforma.Create; 
  Self.FDal             := TDalERPmesaforma.Create( Param, True ); 
end; 

procedure TControllerERPmesaforma.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPmesaforma.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPmesaforma.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPmesaforma.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPmesaforma.SetModel(  
  const Value: TModelERPmesaforma); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPmesaforma.SetModelList(  
  const Value: TModelBaseList<TModelERPmesaforma>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPmesaforma.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPmesaforma.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

