
unit Controller.ERP.troca;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPtroca = class(TControllerBase, IController) 
  private 
    FDal : TViewERPtroca;
    FModelList: TModelBaseList<TModelERPtroca>; 
    FModel: TModelERPtroca;
    procedure SetModel(const Value: TModelERPtroca); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPtroca>);

  public 
    property Model : TModelERPtroca read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPtroca> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPtroca.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPtroca>.Create;  
  Self.FModelList.Add(TModelERPtroca.Create); 
  Self.FModel           := TModelERPtroca.Create; 
  Self.FDal             := TDalERPtroca.Create( Param, True ); 
end; 

procedure TControllerERPtroca.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPtroca.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPtroca.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPtroca.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPtroca.SetModel(  
  const Value: TModelERPtroca); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPtroca.SetModelList(  
  const Value: TModelBaseList<TModelERPtroca>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPtroca.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPtroca.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

