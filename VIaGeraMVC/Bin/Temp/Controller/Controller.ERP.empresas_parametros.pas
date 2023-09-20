
unit Controller.ERP.empresas_email;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPempresasemail = class(TControllerBase, IController) 
  private 
    FDal : TViewERPempresasemail;
    FModelList: TModelBaseList<TModelERPempresasemail>; 
    FModel: TModelERPempresasemail;
    procedure SetModel(const Value: TModelERPempresasemail); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPempresasemail>);

  public 
    property Model : TModelERPempresasemail read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPempresasemail> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPempresasemail.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPempresasemail>.Create;  
  Self.FModelList.Add(TModelERPempresasemail.Create); 
  Self.FModel           := TModelERPempresasemail.Create; 
  Self.FDal             := TDalERPempresasemail.Create( Param, True ); 
end; 

procedure TControllerERPempresasemail.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPempresasemail.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPempresasemail.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPempresasemail.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPempresasemail.SetModel(  
  const Value: TModelERPempresasemail); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPempresasemail.SetModelList(  
  const Value: TModelBaseList<TModelERPempresasemail>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPempresasemail.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPempresasemail.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

