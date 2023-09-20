
unit Controller.ERP.venda_xml;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPvendaxml = class(TControllerBase, IController) 
  private 
    FDal : TViewERPvendaxml;
    FModelList: TModelBaseList<TModelERPvendaxml>; 
    FModel: TModelERPvendaxml;
    procedure SetModel(const Value: TModelERPvendaxml); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPvendaxml>);

  public 
    property Model : TModelERPvendaxml read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPvendaxml> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPvendaxml.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPvendaxml>.Create;  
  Self.FModelList.Add(TModelERPvendaxml.Create); 
  Self.FModel           := TModelERPvendaxml.Create; 
  Self.FDal             := TDalERPvendaxml.Create( Param, True ); 
end; 

procedure TControllerERPvendaxml.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPvendaxml.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPvendaxml.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPvendaxml.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPvendaxml.SetModel(  
  const Value: TModelERPvendaxml); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPvendaxml.SetModelList(  
  const Value: TModelBaseList<TModelERPvendaxml>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPvendaxml.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPvendaxml.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

