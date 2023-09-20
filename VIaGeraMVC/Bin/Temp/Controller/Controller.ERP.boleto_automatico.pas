
unit Controller.ERP.boleto;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPboleto = class(TControllerBase, IController) 
  private 
    FDal : TViewERPboleto;
    FModelList: TModelBaseList<TModelERPboleto>; 
    FModel: TModelERPboleto;
    procedure SetModel(const Value: TModelERPboleto); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPboleto>);

  public 
    property Model : TModelERPboleto read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPboleto> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPboleto.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPboleto>.Create;  
  Self.FModelList.Add(TModelERPboleto.Create); 
  Self.FModel           := TModelERPboleto.Create; 
  Self.FDal             := TDalERPboleto.Create( Param, True ); 
end; 

procedure TControllerERPboleto.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPboleto.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPboleto.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPboleto.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPboleto.SetModel(  
  const Value: TModelERPboleto); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPboleto.SetModelList(  
  const Value: TModelBaseList<TModelERPboleto>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPboleto.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPboleto.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

