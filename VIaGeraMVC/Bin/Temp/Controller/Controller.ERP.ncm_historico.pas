
unit Controller.ERP.ncm;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPncm = class(TControllerBase, IController) 
  private 
    FDal : TViewERPncm;
    FModelList: TModelBaseList<TModelERPncm>; 
    FModel: TModelERPncm;
    procedure SetModel(const Value: TModelERPncm); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPncm>);

  public 
    property Model : TModelERPncm read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPncm> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPncm.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPncm>.Create;  
  Self.FModelList.Add(TModelERPncm.Create); 
  Self.FModel           := TModelERPncm.Create; 
  Self.FDal             := TDalERPncm.Create( Param, True ); 
end; 

procedure TControllerERPncm.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPncm.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPncm.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPncm.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPncm.SetModel(  
  const Value: TModelERPncm); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPncm.SetModelList(  
  const Value: TModelBaseList<TModelERPncm>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPncm.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPncm.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

