
unit Controller.ERP.transf_deposito;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPtransfdeposito = class(TControllerBase, IController) 
  private 
    FDal : TViewERPtransfdeposito;
    FModelList: TModelBaseList<TModelERPtransfdeposito>; 
    FModel: TModelERPtransfdeposito;
    procedure SetModel(const Value: TModelERPtransfdeposito); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPtransfdeposito>);

  public 
    property Model : TModelERPtransfdeposito read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPtransfdeposito> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPtransfdeposito.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPtransfdeposito>.Create;  
  Self.FModelList.Add(TModelERPtransfdeposito.Create); 
  Self.FModel           := TModelERPtransfdeposito.Create; 
  Self.FDal             := TDalERPtransfdeposito.Create( Param, True ); 
end; 

procedure TControllerERPtransfdeposito.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPtransfdeposito.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPtransfdeposito.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPtransfdeposito.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPtransfdeposito.SetModel(  
  const Value: TModelERPtransfdeposito); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPtransfdeposito.SetModelList(  
  const Value: TModelBaseList<TModelERPtransfdeposito>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPtransfdeposito.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPtransfdeposito.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

