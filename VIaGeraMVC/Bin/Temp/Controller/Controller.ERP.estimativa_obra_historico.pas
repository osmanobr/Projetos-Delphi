
unit Controller.ERP.estimativa_obra;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPestimativaobra = class(TControllerBase, IController) 
  private 
    FDal : TViewERPestimativaobra;
    FModelList: TModelBaseList<TModelERPestimativaobra>; 
    FModel: TModelERPestimativaobra;
    procedure SetModel(const Value: TModelERPestimativaobra); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPestimativaobra>);

  public 
    property Model : TModelERPestimativaobra read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPestimativaobra> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPestimativaobra.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPestimativaobra>.Create;  
  Self.FModelList.Add(TModelERPestimativaobra.Create); 
  Self.FModel           := TModelERPestimativaobra.Create; 
  Self.FDal             := TDalERPestimativaobra.Create( Param, True ); 
end; 

procedure TControllerERPestimativaobra.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPestimativaobra.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPestimativaobra.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPestimativaobra.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPestimativaobra.SetModel(  
  const Value: TModelERPestimativaobra); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPestimativaobra.SetModelList(  
  const Value: TModelBaseList<TModelERPestimativaobra>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPestimativaobra.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPestimativaobra.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

