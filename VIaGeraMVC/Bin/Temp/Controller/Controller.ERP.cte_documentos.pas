
unit Controller.ERP.cst_piscofins_natureza_relacao;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcstpiscofinsnaturezarelacao = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcstpiscofinsnaturezarelacao;
    FModelList: TModelBaseList<TModelERPcstpiscofinsnaturezarelacao>; 
    FModel: TModelERPcstpiscofinsnaturezarelacao;
    procedure SetModel(const Value: TModelERPcstpiscofinsnaturezarelacao); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcstpiscofinsnaturezarelacao>);

  public 
    property Model : TModelERPcstpiscofinsnaturezarelacao read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcstpiscofinsnaturezarelacao> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcstpiscofinsnaturezarelacao.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcstpiscofinsnaturezarelacao>.Create;  
  Self.FModelList.Add(TModelERPcstpiscofinsnaturezarelacao.Create); 
  Self.FModel           := TModelERPcstpiscofinsnaturezarelacao.Create; 
  Self.FDal             := TDalERPcstpiscofinsnaturezarelacao.Create( Param, True ); 
end; 

procedure TControllerERPcstpiscofinsnaturezarelacao.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcstpiscofinsnaturezarelacao.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcstpiscofinsnaturezarelacao.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcstpiscofinsnaturezarelacao.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcstpiscofinsnaturezarelacao.SetModel(  
  const Value: TModelERPcstpiscofinsnaturezarelacao); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcstpiscofinsnaturezarelacao.SetModelList(  
  const Value: TModelBaseList<TModelERPcstpiscofinsnaturezarelacao>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcstpiscofinsnaturezarelacao.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcstpiscofinsnaturezarelacao.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

