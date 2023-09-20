
unit Controller.ERP.carga_pdv;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcargapdv = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcargapdv;
    FModelList: TModelBaseList<TModelERPcargapdv>; 
    FModel: TModelERPcargapdv;
    procedure SetModel(const Value: TModelERPcargapdv); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcargapdv>);

  public 
    property Model : TModelERPcargapdv read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcargapdv> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcargapdv.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcargapdv>.Create;  
  Self.FModelList.Add(TModelERPcargapdv.Create); 
  Self.FModel           := TModelERPcargapdv.Create; 
  Self.FDal             := TDalERPcargapdv.Create( Param, True ); 
end; 

procedure TControllerERPcargapdv.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcargapdv.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcargapdv.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcargapdv.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcargapdv.SetModel(  
  const Value: TModelERPcargapdv); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcargapdv.SetModelList(  
  const Value: TModelBaseList<TModelERPcargapdv>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcargapdv.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcargapdv.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

