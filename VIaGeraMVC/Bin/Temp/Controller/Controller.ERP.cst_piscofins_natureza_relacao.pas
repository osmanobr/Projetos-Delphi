
unit Controller.ERP.cst_piscofins_natureza_ncm;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcstpiscofinsnaturezancm = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcstpiscofinsnaturezancm;
    FModelList: TModelBaseList<TModelERPcstpiscofinsnaturezancm>; 
    FModel: TModelERPcstpiscofinsnaturezancm;
    procedure SetModel(const Value: TModelERPcstpiscofinsnaturezancm); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcstpiscofinsnaturezancm>);

  public 
    property Model : TModelERPcstpiscofinsnaturezancm read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcstpiscofinsnaturezancm> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcstpiscofinsnaturezancm.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcstpiscofinsnaturezancm>.Create;  
  Self.FModelList.Add(TModelERPcstpiscofinsnaturezancm.Create); 
  Self.FModel           := TModelERPcstpiscofinsnaturezancm.Create; 
  Self.FDal             := TDalERPcstpiscofinsnaturezancm.Create( Param, True ); 
end; 

procedure TControllerERPcstpiscofinsnaturezancm.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcstpiscofinsnaturezancm.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcstpiscofinsnaturezancm.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcstpiscofinsnaturezancm.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcstpiscofinsnaturezancm.SetModel(  
  const Value: TModelERPcstpiscofinsnaturezancm); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcstpiscofinsnaturezancm.SetModelList(  
  const Value: TModelBaseList<TModelERPcstpiscofinsnaturezancm>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcstpiscofinsnaturezancm.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcstpiscofinsnaturezancm.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

