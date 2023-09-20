
unit Controller.ERP.impressora_fiscal;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPimpressorafiscal = class(TControllerBase, IController) 
  private 
    FDal : TViewERPimpressorafiscal;
    FModelList: TModelBaseList<TModelERPimpressorafiscal>; 
    FModel: TModelERPimpressorafiscal;
    procedure SetModel(const Value: TModelERPimpressorafiscal); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPimpressorafiscal>);

  public 
    property Model : TModelERPimpressorafiscal read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPimpressorafiscal> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPimpressorafiscal.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPimpressorafiscal>.Create;  
  Self.FModelList.Add(TModelERPimpressorafiscal.Create); 
  Self.FModel           := TModelERPimpressorafiscal.Create; 
  Self.FDal             := TDalERPimpressorafiscal.Create( Param, True ); 
end; 

procedure TControllerERPimpressorafiscal.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPimpressorafiscal.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPimpressorafiscal.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPimpressorafiscal.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPimpressorafiscal.SetModel(  
  const Value: TModelERPimpressorafiscal); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPimpressorafiscal.SetModelList(  
  const Value: TModelBaseList<TModelERPimpressorafiscal>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPimpressorafiscal.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPimpressorafiscal.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

