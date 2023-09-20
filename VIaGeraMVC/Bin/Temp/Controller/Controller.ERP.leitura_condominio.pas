
unit Controller.ERP.leitura_coleta_lote;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPleituracoletalote = class(TControllerBase, IController) 
  private 
    FDal : TViewERPleituracoletalote;
    FModelList: TModelBaseList<TModelERPleituracoletalote>; 
    FModel: TModelERPleituracoletalote;
    procedure SetModel(const Value: TModelERPleituracoletalote); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPleituracoletalote>);

  public 
    property Model : TModelERPleituracoletalote read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPleituracoletalote> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPleituracoletalote.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPleituracoletalote>.Create;  
  Self.FModelList.Add(TModelERPleituracoletalote.Create); 
  Self.FModel           := TModelERPleituracoletalote.Create; 
  Self.FDal             := TDalERPleituracoletalote.Create( Param, True ); 
end; 

procedure TControllerERPleituracoletalote.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPleituracoletalote.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPleituracoletalote.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPleituracoletalote.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPleituracoletalote.SetModel(  
  const Value: TModelERPleituracoletalote); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPleituracoletalote.SetModelList(  
  const Value: TModelBaseList<TModelERPleituracoletalote>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPleituracoletalote.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPleituracoletalote.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

