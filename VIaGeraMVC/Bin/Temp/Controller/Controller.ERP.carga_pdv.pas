
unit Controller.ERP.carga;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcarga = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcarga;
    FModelList: TModelBaseList<TModelERPcarga>; 
    FModel: TModelERPcarga;
    procedure SetModel(const Value: TModelERPcarga); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcarga>);

  public 
    property Model : TModelERPcarga read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcarga> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcarga.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcarga>.Create;  
  Self.FModelList.Add(TModelERPcarga.Create); 
  Self.FModel           := TModelERPcarga.Create; 
  Self.FDal             := TDalERPcarga.Create( Param, True ); 
end; 

procedure TControllerERPcarga.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcarga.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcarga.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcarga.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcarga.SetModel(  
  const Value: TModelERPcarga); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcarga.SetModelList(  
  const Value: TModelBaseList<TModelERPcarga>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcarga.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcarga.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

