
unit Controller.ERP.dependente_busca;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPdependentebusca = class(TControllerBase, IController) 
  private 
    FDal : TViewERPdependentebusca;
    FModelList: TModelBaseList<TModelERPdependentebusca>; 
    FModel: TModelERPdependentebusca;
    procedure SetModel(const Value: TModelERPdependentebusca); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPdependentebusca>);

  public 
    property Model : TModelERPdependentebusca read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPdependentebusca> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPdependentebusca.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPdependentebusca>.Create;  
  Self.FModelList.Add(TModelERPdependentebusca.Create); 
  Self.FModel           := TModelERPdependentebusca.Create; 
  Self.FDal             := TDalERPdependentebusca.Create( Param, True ); 
end; 

procedure TControllerERPdependentebusca.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPdependentebusca.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPdependentebusca.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPdependentebusca.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPdependentebusca.SetModel(  
  const Value: TModelERPdependentebusca); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPdependentebusca.SetModelList(  
  const Value: TModelBaseList<TModelERPdependentebusca>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPdependentebusca.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPdependentebusca.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

