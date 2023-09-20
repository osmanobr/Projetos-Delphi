
unit Controller.ERP.venda_xml_nfe;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPvendaxmlnfe = class(TControllerBase, IController) 
  private 
    FDal : TViewERPvendaxmlnfe;
    FModelList: TModelBaseList<TModelERPvendaxmlnfe>; 
    FModel: TModelERPvendaxmlnfe;
    procedure SetModel(const Value: TModelERPvendaxmlnfe); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPvendaxmlnfe>);

  public 
    property Model : TModelERPvendaxmlnfe read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPvendaxmlnfe> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPvendaxmlnfe.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPvendaxmlnfe>.Create;  
  Self.FModelList.Add(TModelERPvendaxmlnfe.Create); 
  Self.FModel           := TModelERPvendaxmlnfe.Create; 
  Self.FDal             := TDalERPvendaxmlnfe.Create( Param, True ); 
end; 

procedure TControllerERPvendaxmlnfe.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPvendaxmlnfe.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPvendaxmlnfe.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPvendaxmlnfe.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPvendaxmlnfe.SetModel(  
  const Value: TModelERPvendaxmlnfe); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPvendaxmlnfe.SetModelList(  
  const Value: TModelBaseList<TModelERPvendaxmlnfe>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPvendaxmlnfe.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPvendaxmlnfe.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

