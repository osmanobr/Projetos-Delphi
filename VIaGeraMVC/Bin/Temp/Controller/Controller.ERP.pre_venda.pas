
unit Controller.ERP.prazos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPprazos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPprazos;
    FModelList: TModelBaseList<TModelERPprazos>; 
    FModel: TModelERPprazos;
    procedure SetModel(const Value: TModelERPprazos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPprazos>);

  public 
    property Model : TModelERPprazos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPprazos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPprazos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPprazos>.Create;  
  Self.FModelList.Add(TModelERPprazos.Create); 
  Self.FModel           := TModelERPprazos.Create; 
  Self.FDal             := TDalERPprazos.Create( Param, True ); 
end; 

procedure TControllerERPprazos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPprazos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPprazos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPprazos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPprazos.SetModel(  
  const Value: TModelERPprazos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPprazos.SetModelList(  
  const Value: TModelBaseList<TModelERPprazos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPprazos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPprazos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

