
unit Controller.ERP.clientes_propriedades;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPclientespropriedades = class(TControllerBase, IController) 
  private 
    FDal : TViewERPclientespropriedades;
    FModelList: TModelBaseList<TModelERPclientespropriedades>; 
    FModel: TModelERPclientespropriedades;
    procedure SetModel(const Value: TModelERPclientespropriedades); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPclientespropriedades>);

  public 
    property Model : TModelERPclientespropriedades read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPclientespropriedades> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPclientespropriedades.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPclientespropriedades>.Create;  
  Self.FModelList.Add(TModelERPclientespropriedades.Create); 
  Self.FModel           := TModelERPclientespropriedades.Create; 
  Self.FDal             := TDalERPclientespropriedades.Create( Param, True ); 
end; 

procedure TControllerERPclientespropriedades.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPclientespropriedades.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPclientespropriedades.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPclientespropriedades.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPclientespropriedades.SetModel(  
  const Value: TModelERPclientespropriedades); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPclientespropriedades.SetModelList(  
  const Value: TModelBaseList<TModelERPclientespropriedades>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPclientespropriedades.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPclientespropriedades.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

