
unit Controller.ERP.controle_envio_email;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontroleenvioemail = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontroleenvioemail;
    FModelList: TModelBaseList<TModelERPcontroleenvioemail>; 
    FModel: TModelERPcontroleenvioemail;
    procedure SetModel(const Value: TModelERPcontroleenvioemail); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontroleenvioemail>);

  public 
    property Model : TModelERPcontroleenvioemail read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontroleenvioemail> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontroleenvioemail.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontroleenvioemail>.Create;  
  Self.FModelList.Add(TModelERPcontroleenvioemail.Create); 
  Self.FModel           := TModelERPcontroleenvioemail.Create; 
  Self.FDal             := TDalERPcontroleenvioemail.Create( Param, True ); 
end; 

procedure TControllerERPcontroleenvioemail.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontroleenvioemail.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontroleenvioemail.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontroleenvioemail.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontroleenvioemail.SetModel(  
  const Value: TModelERPcontroleenvioemail); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontroleenvioemail.SetModelList(  
  const Value: TModelBaseList<TModelERPcontroleenvioemail>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontroleenvioemail.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontroleenvioemail.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

