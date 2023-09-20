
unit Controller.ERP.os_servico;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPosservico = class(TControllerBase, IController) 
  private 
    FDal : TViewERPosservico;
    FModelList: TModelBaseList<TModelERPosservico>; 
    FModel: TModelERPosservico;
    procedure SetModel(const Value: TModelERPosservico); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPosservico>);

  public 
    property Model : TModelERPosservico read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPosservico> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPosservico.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPosservico>.Create;  
  Self.FModelList.Add(TModelERPosservico.Create); 
  Self.FModel           := TModelERPosservico.Create; 
  Self.FDal             := TDalERPosservico.Create( Param, True ); 
end; 

procedure TControllerERPosservico.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPosservico.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPosservico.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPosservico.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPosservico.SetModel(  
  const Value: TModelERPosservico); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPosservico.SetModelList(  
  const Value: TModelBaseList<TModelERPosservico>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPosservico.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPosservico.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

