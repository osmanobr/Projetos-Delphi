
unit Controller.ERP.conta_receber_ocorrencia;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontareceberocorrencia = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontareceberocorrencia;
    FModelList: TModelBaseList<TModelERPcontareceberocorrencia>; 
    FModel: TModelERPcontareceberocorrencia;
    procedure SetModel(const Value: TModelERPcontareceberocorrencia); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontareceberocorrencia>);

  public 
    property Model : TModelERPcontareceberocorrencia read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontareceberocorrencia> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontareceberocorrencia.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontareceberocorrencia>.Create;  
  Self.FModelList.Add(TModelERPcontareceberocorrencia.Create); 
  Self.FModel           := TModelERPcontareceberocorrencia.Create; 
  Self.FDal             := TDalERPcontareceberocorrencia.Create( Param, True ); 
end; 

procedure TControllerERPcontareceberocorrencia.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontareceberocorrencia.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontareceberocorrencia.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontareceberocorrencia.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontareceberocorrencia.SetModel(  
  const Value: TModelERPcontareceberocorrencia); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontareceberocorrencia.SetModelList(  
  const Value: TModelBaseList<TModelERPcontareceberocorrencia>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontareceberocorrencia.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontareceberocorrencia.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

