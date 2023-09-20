
unit Controller.ERP.recibo_avulso;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPreciboavulso = class(TControllerBase, IController) 
  private 
    FDal : TViewERPreciboavulso;
    FModelList: TModelBaseList<TModelERPreciboavulso>; 
    FModel: TModelERPreciboavulso;
    procedure SetModel(const Value: TModelERPreciboavulso); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPreciboavulso>);

  public 
    property Model : TModelERPreciboavulso read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPreciboavulso> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPreciboavulso.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPreciboavulso>.Create;  
  Self.FModelList.Add(TModelERPreciboavulso.Create); 
  Self.FModel           := TModelERPreciboavulso.Create; 
  Self.FDal             := TDalERPreciboavulso.Create( Param, True ); 
end; 

procedure TControllerERPreciboavulso.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPreciboavulso.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPreciboavulso.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPreciboavulso.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPreciboavulso.SetModel(  
  const Value: TModelERPreciboavulso); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPreciboavulso.SetModelList(  
  const Value: TModelBaseList<TModelERPreciboavulso>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPreciboavulso.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPreciboavulso.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

