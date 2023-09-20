
unit Controller.ERP.tanque;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPtanque = class(TControllerBase, IController) 
  private 
    FDal : TViewERPtanque;
    FModelList: TModelBaseList<TModelERPtanque>; 
    FModel: TModelERPtanque;
    procedure SetModel(const Value: TModelERPtanque); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPtanque>);

  public 
    property Model : TModelERPtanque read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPtanque> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPtanque.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPtanque>.Create;  
  Self.FModelList.Add(TModelERPtanque.Create); 
  Self.FModel           := TModelERPtanque.Create; 
  Self.FDal             := TDalERPtanque.Create( Param, True ); 
end; 

procedure TControllerERPtanque.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPtanque.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPtanque.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPtanque.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPtanque.SetModel(  
  const Value: TModelERPtanque); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPtanque.SetModelList(  
  const Value: TModelBaseList<TModelERPtanque>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPtanque.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPtanque.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

