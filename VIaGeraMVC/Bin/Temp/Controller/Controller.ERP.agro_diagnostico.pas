
unit Controller.ERP.agro_cultura;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPagrocultura = class(TControllerBase, IController) 
  private 
    FDal : TViewERPagrocultura;
    FModelList: TModelBaseList<TModelERPagrocultura>; 
    FModel: TModelERPagrocultura;
    procedure SetModel(const Value: TModelERPagrocultura); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPagrocultura>);

  public 
    property Model : TModelERPagrocultura read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPagrocultura> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPagrocultura.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPagrocultura>.Create;  
  Self.FModelList.Add(TModelERPagrocultura.Create); 
  Self.FModel           := TModelERPagrocultura.Create; 
  Self.FDal             := TDalERPagrocultura.Create( Param, True ); 
end; 

procedure TControllerERPagrocultura.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPagrocultura.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPagrocultura.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPagrocultura.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPagrocultura.SetModel(  
  const Value: TModelERPagrocultura); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPagrocultura.SetModelList(  
  const Value: TModelBaseList<TModelERPagrocultura>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPagrocultura.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPagrocultura.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

