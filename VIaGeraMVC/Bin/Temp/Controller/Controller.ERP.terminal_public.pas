
unit Controller.ERP.terminal_message;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPterminalmessage = class(TControllerBase, IController) 
  private 
    FDal : TViewERPterminalmessage;
    FModelList: TModelBaseList<TModelERPterminalmessage>; 
    FModel: TModelERPterminalmessage;
    procedure SetModel(const Value: TModelERPterminalmessage); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPterminalmessage>);

  public 
    property Model : TModelERPterminalmessage read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPterminalmessage> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPterminalmessage.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPterminalmessage>.Create;  
  Self.FModelList.Add(TModelERPterminalmessage.Create); 
  Self.FModel           := TModelERPterminalmessage.Create; 
  Self.FDal             := TDalERPterminalmessage.Create( Param, True ); 
end; 

procedure TControllerERPterminalmessage.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPterminalmessage.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPterminalmessage.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPterminalmessage.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPterminalmessage.SetModel(  
  const Value: TModelERPterminalmessage); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPterminalmessage.SetModelList(  
  const Value: TModelBaseList<TModelERPterminalmessage>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPterminalmessage.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPterminalmessage.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

