
unit Controller.ERP.leitura_coleta_foto;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPleituracoletafoto = class(TControllerBase, IController) 
  private 
    FDal : TViewERPleituracoletafoto;
    FModelList: TModelBaseList<TModelERPleituracoletafoto>; 
    FModel: TModelERPleituracoletafoto;
    procedure SetModel(const Value: TModelERPleituracoletafoto); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPleituracoletafoto>);

  public 
    property Model : TModelERPleituracoletafoto read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPleituracoletafoto> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPleituracoletafoto.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPleituracoletafoto>.Create;  
  Self.FModelList.Add(TModelERPleituracoletafoto.Create); 
  Self.FModel           := TModelERPleituracoletafoto.Create; 
  Self.FDal             := TDalERPleituracoletafoto.Create( Param, True ); 
end; 

procedure TControllerERPleituracoletafoto.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPleituracoletafoto.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPleituracoletafoto.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPleituracoletafoto.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPleituracoletafoto.SetModel(  
  const Value: TModelERPleituracoletafoto); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPleituracoletafoto.SetModelList(  
  const Value: TModelBaseList<TModelERPleituracoletafoto>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPleituracoletafoto.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPleituracoletafoto.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

