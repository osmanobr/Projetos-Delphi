
unit Controller.ERP.controle_contador_xml;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPcontrolecontadorxml = class(TControllerBase, IController) 
  private 
    FDal : TViewERPcontrolecontadorxml;
    FModelList: TModelBaseList<TModelERPcontrolecontadorxml>; 
    FModel: TModelERPcontrolecontadorxml;
    procedure SetModel(const Value: TModelERPcontrolecontadorxml); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPcontrolecontadorxml>);

  public 
    property Model : TModelERPcontrolecontadorxml read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPcontrolecontadorxml> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPcontrolecontadorxml.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPcontrolecontadorxml>.Create;  
  Self.FModelList.Add(TModelERPcontrolecontadorxml.Create); 
  Self.FModel           := TModelERPcontrolecontadorxml.Create; 
  Self.FDal             := TDalERPcontrolecontadorxml.Create( Param, True ); 
end; 

procedure TControllerERPcontrolecontadorxml.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPcontrolecontadorxml.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPcontrolecontadorxml.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPcontrolecontadorxml.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPcontrolecontadorxml.SetModel(  
  const Value: TModelERPcontrolecontadorxml); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPcontrolecontadorxml.SetModelList(  
  const Value: TModelBaseList<TModelERPcontrolecontadorxml>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPcontrolecontadorxml.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPcontrolecontadorxml.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

