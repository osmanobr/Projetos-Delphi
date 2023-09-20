
unit Controller.ERP.conversao_ncm_to;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPconversaoncmto = class(TControllerBase, IController) 
  private 
    FDal : TViewERPconversaoncmto;
    FModelList: TModelBaseList<TModelERPconversaoncmto>; 
    FModel: TModelERPconversaoncmto;
    procedure SetModel(const Value: TModelERPconversaoncmto); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPconversaoncmto>);

  public 
    property Model : TModelERPconversaoncmto read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPconversaoncmto> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPconversaoncmto.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPconversaoncmto>.Create;  
  Self.FModelList.Add(TModelERPconversaoncmto.Create); 
  Self.FModel           := TModelERPconversaoncmto.Create; 
  Self.FDal             := TDalERPconversaoncmto.Create( Param, True ); 
end; 

procedure TControllerERPconversaoncmto.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPconversaoncmto.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPconversaoncmto.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPconversaoncmto.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPconversaoncmto.SetModel(  
  const Value: TModelERPconversaoncmto); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPconversaoncmto.SetModelList(  
  const Value: TModelBaseList<TModelERPconversaoncmto>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPconversaoncmto.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPconversaoncmto.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

