
unit Controller.ERP.nfe_manifesto_detalhe;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPnfemanifestodetalhe = class(TControllerBase, IController) 
  private 
    FDal : TViewERPnfemanifestodetalhe;
    FModelList: TModelBaseList<TModelERPnfemanifestodetalhe>; 
    FModel: TModelERPnfemanifestodetalhe;
    procedure SetModel(const Value: TModelERPnfemanifestodetalhe); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPnfemanifestodetalhe>);

  public 
    property Model : TModelERPnfemanifestodetalhe read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPnfemanifestodetalhe> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPnfemanifestodetalhe.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPnfemanifestodetalhe>.Create;  
  Self.FModelList.Add(TModelERPnfemanifestodetalhe.Create); 
  Self.FModel           := TModelERPnfemanifestodetalhe.Create; 
  Self.FDal             := TDalERPnfemanifestodetalhe.Create( Param, True ); 
end; 

procedure TControllerERPnfemanifestodetalhe.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPnfemanifestodetalhe.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPnfemanifestodetalhe.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPnfemanifestodetalhe.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPnfemanifestodetalhe.SetModel(  
  const Value: TModelERPnfemanifestodetalhe); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPnfemanifestodetalhe.SetModelList(  
  const Value: TModelBaseList<TModelERPnfemanifestodetalhe>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPnfemanifestodetalhe.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPnfemanifestodetalhe.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

