
unit Controller.ERP.taxa_ibpt;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPtaxaibpt = class(TControllerBase, IController) 
  private 
    FDal : TViewERPtaxaibpt;
    FModelList: TModelBaseList<TModelERPtaxaibpt>; 
    FModel: TModelERPtaxaibpt;
    procedure SetModel(const Value: TModelERPtaxaibpt); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPtaxaibpt>);

  public 
    property Model : TModelERPtaxaibpt read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPtaxaibpt> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPtaxaibpt.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPtaxaibpt>.Create;  
  Self.FModelList.Add(TModelERPtaxaibpt.Create); 
  Self.FModel           := TModelERPtaxaibpt.Create; 
  Self.FDal             := TDalERPtaxaibpt.Create( Param, True ); 
end; 

procedure TControllerERPtaxaibpt.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPtaxaibpt.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPtaxaibpt.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPtaxaibpt.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPtaxaibpt.SetModel(  
  const Value: TModelERPtaxaibpt); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPtaxaibpt.SetModelList(  
  const Value: TModelBaseList<TModelERPtaxaibpt>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPtaxaibpt.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPtaxaibpt.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

