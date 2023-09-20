
unit Controller.ERP.vendedor;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPvendedor = class(TControllerBase, IController) 
  private 
    FDal : TViewERPvendedor;
    FModelList: TModelBaseList<TModelERPvendedor>; 
    FModel: TModelERPvendedor;
    procedure SetModel(const Value: TModelERPvendedor); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPvendedor>);

  public 
    property Model : TModelERPvendedor read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPvendedor> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPvendedor.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPvendedor>.Create;  
  Self.FModelList.Add(TModelERPvendedor.Create); 
  Self.FModel           := TModelERPvendedor.Create; 
  Self.FDal             := TDalERPvendedor.Create( Param, True ); 
end; 

procedure TControllerERPvendedor.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPvendedor.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPvendedor.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPvendedor.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPvendedor.SetModel(  
  const Value: TModelERPvendedor); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPvendedor.SetModelList(  
  const Value: TModelBaseList<TModelERPvendedor>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPvendedor.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPvendedor.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

