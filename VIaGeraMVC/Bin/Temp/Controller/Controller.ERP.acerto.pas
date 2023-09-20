
unit Controller.ERP.abastecimento;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPabastecimento = class(TControllerBase, IController) 
  private 
    FDal : TViewERPabastecimento;
    FModelList: TModelBaseList<TModelERPabastecimento>; 
    FModel: TModelERPabastecimento;
    procedure SetModel(const Value: TModelERPabastecimento); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPabastecimento>);

  public 
    property Model : TModelERPabastecimento read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPabastecimento> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPabastecimento.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPabastecimento>.Create;  
  Self.FModelList.Add(TModelERPabastecimento.Create); 
  Self.FModel           := TModelERPabastecimento.Create; 
  Self.FDal             := TDalERPabastecimento.Create( Param, True ); 
end; 

procedure TControllerERPabastecimento.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPabastecimento.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPabastecimento.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPabastecimento.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPabastecimento.SetModel(  
  const Value: TModelERPabastecimento); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPabastecimento.SetModelList(  
  const Value: TModelBaseList<TModelERPabastecimento>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPabastecimento.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPabastecimento.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

