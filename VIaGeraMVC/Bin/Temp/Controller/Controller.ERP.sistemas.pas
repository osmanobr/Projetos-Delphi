
unit Controller.ERP.setor;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPsetor = class(TControllerBase, IController) 
  private 
    FDal : TViewERPsetor;
    FModelList: TModelBaseList<TModelERPsetor>; 
    FModel: TModelERPsetor;
    procedure SetModel(const Value: TModelERPsetor); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPsetor>);

  public 
    property Model : TModelERPsetor read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPsetor> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPsetor.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPsetor>.Create;  
  Self.FModelList.Add(TModelERPsetor.Create); 
  Self.FModel           := TModelERPsetor.Create; 
  Self.FDal             := TDalERPsetor.Create( Param, True ); 
end; 

procedure TControllerERPsetor.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPsetor.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPsetor.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPsetor.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPsetor.SetModel(  
  const Value: TModelERPsetor); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPsetor.SetModelList(  
  const Value: TModelBaseList<TModelERPsetor>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPsetor.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPsetor.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

