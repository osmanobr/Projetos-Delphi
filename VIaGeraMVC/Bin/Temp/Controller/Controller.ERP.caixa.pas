
unit Controller.ERP.c;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPc = class(TControllerBase, IController) 
  private 
    FDal : TViewERPc;
    FModelList: TModelBaseList<TModelERPc>; 
    FModel: TModelERPc;
    procedure SetModel(const Value: TModelERPc); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPc>);

  public 
    property Model : TModelERPc read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPc> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPc.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPc>.Create;  
  Self.FModelList.Add(TModelERPc.Create); 
  Self.FModel           := TModelERPc.Create; 
  Self.FDal             := TDalERPc.Create( Param, True ); 
end; 

procedure TControllerERPc.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPc.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPc.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPc.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPc.SetModel(  
  const Value: TModelERPc); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPc.SetModelList(  
  const Value: TModelBaseList<TModelERPc>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPc.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPc.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

