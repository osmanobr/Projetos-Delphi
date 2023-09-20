
unit Controller.ERP.venda_entrega;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPvendaentrega = class(TControllerBase, IController) 
  private 
    FDal : TViewERPvendaentrega;
    FModelList: TModelBaseList<TModelERPvendaentrega>; 
    FModel: TModelERPvendaentrega;
    procedure SetModel(const Value: TModelERPvendaentrega); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPvendaentrega>);

  public 
    property Model : TModelERPvendaentrega read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPvendaentrega> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPvendaentrega.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPvendaentrega>.Create;  
  Self.FModelList.Add(TModelERPvendaentrega.Create); 
  Self.FModel           := TModelERPvendaentrega.Create; 
  Self.FDal             := TDalERPvendaentrega.Create( Param, True ); 
end; 

procedure TControllerERPvendaentrega.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPvendaentrega.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPvendaentrega.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPvendaentrega.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPvendaentrega.SetModel(  
  const Value: TModelERPvendaentrega); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPvendaentrega.SetModelList(  
  const Value: TModelBaseList<TModelERPvendaentrega>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPvendaentrega.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPvendaentrega.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

