@AbapCatalog.sqlViewName: 'z_climo_type'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'interface view for client monitoring types'

@ObjectModel: {
representativeKey: 'node_key',
writeActivePersistence: 'ZCLIMO_TYPE',
createEnabled: false,
updateEnabled: false,
deleteEnabled: false
}

define view z_i_climp_type
  as select from zclimo_type
  association [0..*] to z_i_climo_error as _Error on zclimo_type.type = _Error.type
{

      //zclimo_type
  key type,
      descr,
      @ObjectModel.association.type: [#TO_COMPOSITION_PARENT, #TO_COMPOSITION_ROOT]
      _Error
} 
 