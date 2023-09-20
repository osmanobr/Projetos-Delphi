
unit Controller.ERP.cfop;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcfop = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcfop;
    FModelList: TModelBaseList<TModelERPcfop>; 
    FModel: TModelERPcfop;
    procedure SetModel(const Value: TModelERPcfop); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcfop>);

  public 
    property Model : TModelERPcfop read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcfop> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcfop.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcfop>.Create;  
  Self.FModelList.Add(TModelERPcfop.Create); 
  Self.FModel           := TModelERPcfop.Create; 
  Self.FDal             := TDalERPcfop.Create( Param, True ); 
end; 

procedure TControllerERPcfop.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcfop.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcfop.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcfop.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcfop.SetModel(  
  const Value: TModelERPcfop); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcfop.SetModelList(  
  const Value: TModelBaseList<TModelERPcfop>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcfop.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcfop.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

