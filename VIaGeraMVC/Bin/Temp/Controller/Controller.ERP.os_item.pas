
unit Controller.ERP.os_equipamentos;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPosequipamentos = class(TControllerBase, IController) 
  private 
    FDal : TViewERPosequipamentos;
    FModelList: TModelBaseList<TModelERPosequipamentos>; 
    FModel: TModelERPosequipamentos;
    procedure SetModel(const Value: TModelERPosequipamentos); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPosequipamentos>);

  public 
    property Model : TModelERPosequipamentos read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPosequipamentos> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPosequipamentos.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPosequipamentos>.Create;  
  Self.FModelList.Add(TModelERPosequipamentos.Create); 
  Self.FModel           := TModelERPosequipamentos.Create; 
  Self.FDal             := TDalERPosequipamentos.Create( Param, True ); 
end; 

procedure TControllerERPosequipamentos.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPosequipamentos.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPosequipamentos.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPosequipamentos.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPosequipamentos.SetModel(  
  const Value: TModelERPosequipamentos); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPosequipamentos.SetModelList(  
  const Value: TModelBaseList<TModelERPosequipamentos>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPosequipamentos.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPosequipamentos.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

