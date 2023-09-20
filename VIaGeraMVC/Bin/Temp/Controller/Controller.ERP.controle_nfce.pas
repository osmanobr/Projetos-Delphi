
unit Controller.ERP.controle_nf;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontrolenf = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontrolenf;
    FModelList: TModelBaseList<TModelERPcontrolenf>; 
    FModel: TModelERPcontrolenf;
    procedure SetModel(const Value: TModelERPcontrolenf); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontrolenf>);

  public 
    property Model : TModelERPcontrolenf read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontrolenf> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontrolenf.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontrolenf>.Create;  
  Self.FModelList.Add(TModelERPcontrolenf.Create); 
  Self.FModel           := TModelERPcontrolenf.Create; 
  Self.FDal             := TDalERPcontrolenf.Create( Param, True ); 
end; 

procedure TControllerERPcontrolenf.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontrolenf.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontrolenf.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontrolenf.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontrolenf.SetModel(  
  const Value: TModelERPcontrolenf); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontrolenf.SetModelList(  
  const Value: TModelBaseList<TModelERPcontrolenf>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontrolenf.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontrolenf.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

