
unit Controller.ERP.nota;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPnota = class(TControllerBase, IController) 
  private 
    FDal : TViewERPnota;
    FModelList: TModelBaseList<TModelERPnota>; 
    FModel: TModelERPnota;
    procedure SetModel(const Value: TModelERPnota); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPnota>);

  public 
    property Model : TModelERPnota read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPnota> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPnota.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPnota>.Create;  
  Self.FModelList.Add(TModelERPnota.Create); 
  Self.FModel           := TModelERPnota.Create; 
  Self.FDal             := TDalERPnota.Create( Param, True ); 
end; 

procedure TControllerERPnota.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPnota.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPnota.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPnota.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPnota.SetModel(  
  const Value: TModelERPnota); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPnota.SetModelList(  
  const Value: TModelBaseList<TModelERPnota>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPnota.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPnota.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

