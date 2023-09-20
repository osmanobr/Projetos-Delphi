
unit Controller.ERP.pdv_lancamento;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPpdvlancamento = class(TControllerBase, IController) 
  private 
    FDal : TViewERPpdvlancamento;
    FModelList: TModelBaseList<TModelERPpdvlancamento>; 
    FModel: TModelERPpdvlancamento;
    procedure SetModel(const Value: TModelERPpdvlancamento); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPpdvlancamento>);

  public 
    property Model : TModelERPpdvlancamento read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPpdvlancamento> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPpdvlancamento.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPpdvlancamento>.Create;  
  Self.FModelList.Add(TModelERPpdvlancamento.Create); 
  Self.FModel           := TModelERPpdvlancamento.Create; 
  Self.FDal             := TDalERPpdvlancamento.Create( Param, True ); 
end; 

procedure TControllerERPpdvlancamento.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPpdvlancamento.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPpdvlancamento.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPpdvlancamento.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPpdvlancamento.SetModel(  
  const Value: TModelERPpdvlancamento); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPpdvlancamento.SetModelList(  
  const Value: TModelBaseList<TModelERPpdvlancamento>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPpdvlancamento.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPpdvlancamento.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

