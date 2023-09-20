
unit Controller.ERP.conta_receber_web;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontareceberweb = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontareceberweb;
    FModelList: TModelBaseList<TModelERPcontareceberweb>; 
    FModel: TModelERPcontareceberweb;
    procedure SetModel(const Value: TModelERPcontareceberweb); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontareceberweb>);

  public 
    property Model : TModelERPcontareceberweb read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontareceberweb> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontareceberweb.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontareceberweb>.Create;  
  Self.FModelList.Add(TModelERPcontareceberweb.Create); 
  Self.FModel           := TModelERPcontareceberweb.Create; 
  Self.FDal             := TDalERPcontareceberweb.Create( Param, True ); 
end; 

procedure TControllerERPcontareceberweb.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontareceberweb.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontareceberweb.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontareceberweb.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontareceberweb.SetModel(  
  const Value: TModelERPcontareceberweb); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontareceberweb.SetModelList(  
  const Value: TModelBaseList<TModelERPcontareceberweb>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontareceberweb.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontareceberweb.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

