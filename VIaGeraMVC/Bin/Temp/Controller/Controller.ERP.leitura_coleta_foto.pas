
unit Controller.ERP.leitura_coleta;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPleituracoleta = class(TControllerBase, IController) 
  private 
    FDal : TViewERPleituracoleta;
    FModelList: TModelBaseList<TModelERPleituracoleta>; 
    FModel: TModelERPleituracoleta;
    procedure SetModel(const Value: TModelERPleituracoleta); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPleituracoleta>);

  public 
    property Model : TModelERPleituracoleta read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPleituracoleta> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPleituracoleta.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPleituracoleta>.Create;  
  Self.FModelList.Add(TModelERPleituracoleta.Create); 
  Self.FModel           := TModelERPleituracoleta.Create; 
  Self.FDal             := TDalERPleituracoleta.Create( Param, True ); 
end; 

procedure TControllerERPleituracoleta.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPleituracoleta.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPleituracoleta.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPleituracoleta.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPleituracoleta.SetModel(  
  const Value: TModelERPleituracoleta); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPleituracoleta.SetModelList(  
  const Value: TModelBaseList<TModelERPleituracoleta>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPleituracoleta.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPleituracoleta.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

