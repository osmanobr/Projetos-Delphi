
unit Controller.ERP.impressora;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPimpressora = class(TControllerBase, IController) 
  private 
    FDal : TViewERPimpressora;
    FModelList: TModelBaseList<TModelERPimpressora>; 
    FModel: TModelERPimpressora;
    procedure SetModel(const Value: TModelERPimpressora); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPimpressora>);

  public 
    property Model : TModelERPimpressora read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPimpressora> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPimpressora.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPimpressora>.Create;  
  Self.FModelList.Add(TModelERPimpressora.Create); 
  Self.FModel           := TModelERPimpressora.Create; 
  Self.FDal             := TDalERPimpressora.Create( Param, True ); 
end; 

procedure TControllerERPimpressora.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPimpressora.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPimpressora.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPimpressora.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPimpressora.SetModel(  
  const Value: TModelERPimpressora); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPimpressora.SetModelList(  
  const Value: TModelBaseList<TModelERPimpressora>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPimpressora.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPimpressora.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

