
unit Controller.ERP.carga_pdv_controle;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcargapdvcontrole = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcargapdvcontrole;
    FModelList: TModelBaseList<TModelERPcargapdvcontrole>; 
    FModel: TModelERPcargapdvcontrole;
    procedure SetModel(const Value: TModelERPcargapdvcontrole); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcargapdvcontrole>);

  public 
    property Model : TModelERPcargapdvcontrole read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcargapdvcontrole> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcargapdvcontrole.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcargapdvcontrole>.Create;  
  Self.FModelList.Add(TModelERPcargapdvcontrole.Create); 
  Self.FModel           := TModelERPcargapdvcontrole.Create; 
  Self.FDal             := TDalERPcargapdvcontrole.Create( Param, True ); 
end; 

procedure TControllerERPcargapdvcontrole.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcargapdvcontrole.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcargapdvcontrole.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcargapdvcontrole.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcargapdvcontrole.SetModel(  
  const Value: TModelERPcargapdvcontrole); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcargapdvcontrole.SetModelList(  
  const Value: TModelBaseList<TModelERPcargapdvcontrole>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcargapdvcontrole.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcargapdvcontrole.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

