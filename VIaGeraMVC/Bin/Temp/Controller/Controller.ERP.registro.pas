
unit Controller.ERP.referencias_pessoais;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPreferenciaspessoais = class(TControllerBase, IController) 
  private 
    FDal : TViewERPreferenciaspessoais;
    FModelList: TModelBaseList<TModelERPreferenciaspessoais>; 
    FModel: TModelERPreferenciaspessoais;
    procedure SetModel(const Value: TModelERPreferenciaspessoais); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPreferenciaspessoais>);

  public 
    property Model : TModelERPreferenciaspessoais read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPreferenciaspessoais> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPreferenciaspessoais.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPreferenciaspessoais>.Create;  
  Self.FModelList.Add(TModelERPreferenciaspessoais.Create); 
  Self.FModel           := TModelERPreferenciaspessoais.Create; 
  Self.FDal             := TDalERPreferenciaspessoais.Create( Param, True ); 
end; 

procedure TControllerERPreferenciaspessoais.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPreferenciaspessoais.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPreferenciaspessoais.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPreferenciaspessoais.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPreferenciaspessoais.SetModel(  
  const Value: TModelERPreferenciaspessoais); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPreferenciaspessoais.SetModelList(  
  const Value: TModelBaseList<TModelERPreferenciaspessoais>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPreferenciaspessoais.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPreferenciaspessoais.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

