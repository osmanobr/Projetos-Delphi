
unit Controller.ERP.insumos_pdv;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPinsumospdv = class(TControllerBase, IController) 
  private 
    FDal : TViewERPinsumospdv;
    FModelList: TModelBaseList<TModelERPinsumospdv>; 
    FModel: TModelERPinsumospdv;
    procedure SetModel(const Value: TModelERPinsumospdv); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPinsumospdv>);

  public 
    property Model : TModelERPinsumospdv read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPinsumospdv> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPinsumospdv.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPinsumospdv>.Create;  
  Self.FModelList.Add(TModelERPinsumospdv.Create); 
  Self.FModel           := TModelERPinsumospdv.Create; 
  Self.FDal             := TDalERPinsumospdv.Create( Param, True ); 
end; 

procedure TControllerERPinsumospdv.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPinsumospdv.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPinsumospdv.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPinsumospdv.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPinsumospdv.SetModel(  
  const Value: TModelERPinsumospdv); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPinsumospdv.SetModelList(  
  const Value: TModelBaseList<TModelERPinsumospdv>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPinsumospdv.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPinsumospdv.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

