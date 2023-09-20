
unit Controller.ERP.entrega;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPentrega = class(TControllerBase, IController) 
  private 
    FDal : TViewERPentrega;
    FModelList: TModelBaseList<TModelERPentrega>; 
    FModel: TModelERPentrega;
    procedure SetModel(const Value: TModelERPentrega); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPentrega>);

  public 
    property Model : TModelERPentrega read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPentrega> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPentrega.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPentrega>.Create;  
  Self.FModelList.Add(TModelERPentrega.Create); 
  Self.FModel           := TModelERPentrega.Create; 
  Self.FDal             := TDalERPentrega.Create( Param, True ); 
end; 

procedure TControllerERPentrega.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPentrega.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPentrega.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPentrega.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPentrega.SetModel(  
  const Value: TModelERPentrega); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPentrega.SetModelList(  
  const Value: TModelBaseList<TModelERPentrega>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPentrega.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPentrega.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

