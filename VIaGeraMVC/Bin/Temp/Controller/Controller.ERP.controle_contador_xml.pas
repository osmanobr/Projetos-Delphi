
unit Controller.ERP.contratos_escola;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontratosescola = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontratosescola;
    FModelList: TModelBaseList<TModelERPcontratosescola>; 
    FModel: TModelERPcontratosescola;
    procedure SetModel(const Value: TModelERPcontratosescola); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontratosescola>);

  public 
    property Model : TModelERPcontratosescola read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontratosescola> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontratosescola.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontratosescola>.Create;  
  Self.FModelList.Add(TModelERPcontratosescola.Create); 
  Self.FModel           := TModelERPcontratosescola.Create; 
  Self.FDal             := TDalERPcontratosescola.Create( Param, True ); 
end; 

procedure TControllerERPcontratosescola.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontratosescola.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontratosescola.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontratosescola.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontratosescola.SetModel(  
  const Value: TModelERPcontratosescola); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontratosescola.SetModelList(  
  const Value: TModelBaseList<TModelERPcontratosescola>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontratosescola.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontratosescola.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

