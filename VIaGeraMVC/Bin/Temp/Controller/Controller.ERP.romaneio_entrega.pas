
unit Controller.ERP.romaneio;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPromaneio = class(TControllerBase, IController) 
  private 
    FDal : TViewERPromaneio;
    FModelList: TModelBaseList<TModelERPromaneio>; 
    FModel: TModelERPromaneio;
    procedure SetModel(const Value: TModelERPromaneio); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPromaneio>);

  public 
    property Model : TModelERPromaneio read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPromaneio> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPromaneio.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPromaneio>.Create;  
  Self.FModelList.Add(TModelERPromaneio.Create); 
  Self.FModel           := TModelERPromaneio.Create; 
  Self.FDal             := TDalERPromaneio.Create( Param, True ); 
end; 

procedure TControllerERPromaneio.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPromaneio.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPromaneio.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPromaneio.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPromaneio.SetModel(  
  const Value: TModelERPromaneio); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPromaneio.SetModelList(  
  const Value: TModelBaseList<TModelERPromaneio>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPromaneio.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPromaneio.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

