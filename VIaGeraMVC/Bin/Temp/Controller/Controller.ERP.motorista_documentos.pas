
unit Controller.ERP.motorista;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPmotorista = class(TControllerBase, IController) 
  private 
    FDal : TViewERPmotorista;
    FModelList: TModelBaseList<TModelERPmotorista>; 
    FModel: TModelERPmotorista;
    procedure SetModel(const Value: TModelERPmotorista); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPmotorista>);

  public 
    property Model : TModelERPmotorista read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPmotorista> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPmotorista.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPmotorista>.Create;  
  Self.FModelList.Add(TModelERPmotorista.Create); 
  Self.FModel           := TModelERPmotorista.Create; 
  Self.FDal             := TDalERPmotorista.Create( Param, True ); 
end; 

procedure TControllerERPmotorista.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPmotorista.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPmotorista.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPmotorista.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPmotorista.SetModel(  
  const Value: TModelERPmotorista); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPmotorista.SetModelList(  
  const Value: TModelBaseList<TModelERPmotorista>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPmotorista.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPmotorista.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

