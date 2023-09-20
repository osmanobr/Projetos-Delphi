
unit Controller.ERP.boleto_automatico;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPboletoautomatico = class(TControllerBase, IController) 
  private 
    FDal : TViewERPboletoautomatico;
    FModelList: TModelBaseList<TModelERPboletoautomatico>; 
    FModel: TModelERPboletoautomatico;
    procedure SetModel(const Value: TModelERPboletoautomatico); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPboletoautomatico>);

  public 
    property Model : TModelERPboletoautomatico read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPboletoautomatico> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPboletoautomatico.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPboletoautomatico>.Create;  
  Self.FModelList.Add(TModelERPboletoautomatico.Create); 
  Self.FModel           := TModelERPboletoautomatico.Create; 
  Self.FDal             := TDalERPboletoautomatico.Create( Param, True ); 
end; 

procedure TControllerERPboletoautomatico.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPboletoautomatico.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPboletoautomatico.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPboletoautomatico.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPboletoautomatico.SetModel(  
  const Value: TModelERPboletoautomatico); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPboletoautomatico.SetModelList(  
  const Value: TModelBaseList<TModelERPboletoautomatico>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPboletoautomatico.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPboletoautomatico.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

