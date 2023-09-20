
unit Controller.ERP.funcionario;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPfuncionario = class(TControllerBase, IController) 
  private 
    FDal : TViewERPfuncionario;
    FModelList: TModelBaseList<TModelERPfuncionario>; 
    FModel: TModelERPfuncionario;
    procedure SetModel(const Value: TModelERPfuncionario); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPfuncionario>);

  public 
    property Model : TModelERPfuncionario read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPfuncionario> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPfuncionario.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPfuncionario>.Create;  
  Self.FModelList.Add(TModelERPfuncionario.Create); 
  Self.FModel           := TModelERPfuncionario.Create; 
  Self.FDal             := TDalERPfuncionario.Create( Param, True ); 
end; 

procedure TControllerERPfuncionario.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPfuncionario.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPfuncionario.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPfuncionario.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPfuncionario.SetModel(  
  const Value: TModelERPfuncionario); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPfuncionario.SetModelList(  
  const Value: TModelBaseList<TModelERPfuncionario>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPfuncionario.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPfuncionario.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

