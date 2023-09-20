
unit Controller.ERP.acrescimo_frete;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPacrescimofrete = class(TControllerBase, IController) 
  private 
    FDal : TViewERPacrescimofrete;
    FModelList: TModelBaseList<TModelERPacrescimofrete>; 
    FModel: TModelERPacrescimofrete;
    procedure SetModel(const Value: TModelERPacrescimofrete); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPacrescimofrete>);

  public 
    property Model : TModelERPacrescimofrete read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPacrescimofrete> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPacrescimofrete.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPacrescimofrete>.Create;  
  Self.FModelList.Add(TModelERPacrescimofrete.Create); 
  Self.FModel           := TModelERPacrescimofrete.Create; 
  Self.FDal             := TDalERPacrescimofrete.Create( Param, True ); 
end; 

procedure TControllerERPacrescimofrete.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPacrescimofrete.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPacrescimofrete.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPacrescimofrete.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPacrescimofrete.SetModel(  
  const Value: TModelERPacrescimofrete); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPacrescimofrete.SetModelList(  
  const Value: TModelBaseList<TModelERPacrescimofrete>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPacrescimofrete.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPacrescimofrete.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

