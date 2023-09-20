
unit Controller.ERP.controle_manual_medicamento;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontrolemanualmedicamento = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontrolemanualmedicamento;
    FModelList: TModelBaseList<TModelERPcontrolemanualmedicamento>; 
    FModel: TModelERPcontrolemanualmedicamento;
    procedure SetModel(const Value: TModelERPcontrolemanualmedicamento); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontrolemanualmedicamento>);

  public 
    property Model : TModelERPcontrolemanualmedicamento read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontrolemanualmedicamento> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontrolemanualmedicamento.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontrolemanualmedicamento>.Create;  
  Self.FModelList.Add(TModelERPcontrolemanualmedicamento.Create); 
  Self.FModel           := TModelERPcontrolemanualmedicamento.Create; 
  Self.FDal             := TDalERPcontrolemanualmedicamento.Create( Param, True ); 
end; 

procedure TControllerERPcontrolemanualmedicamento.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontrolemanualmedicamento.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontrolemanualmedicamento.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontrolemanualmedicamento.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontrolemanualmedicamento.SetModel(  
  const Value: TModelERPcontrolemanualmedicamento); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontrolemanualmedicamento.SetModelList(  
  const Value: TModelBaseList<TModelERPcontrolemanualmedicamento>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontrolemanualmedicamento.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontrolemanualmedicamento.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

