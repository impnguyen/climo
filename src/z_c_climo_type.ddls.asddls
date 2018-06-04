@AbapCatalog.sqlViewName: 'zddlcclimo_type'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'consumption view for client monitoring type'

@ObjectModel: {
transactionalProcessingDelegated: true,
representativeKey: 'node_key',
createEnabled: false,
updateEnabled: false,
deleteEnabled: false
}

define view z_c_climo_type
  as select from z_i_climp_type
  association [0..*] to z_c_climo_error as _Error on z_i_climp_type.type = _Error.type
{

      //z_i_climp_type
  key type,
      descr,
      /* Associations */
      //z_i_climp_type
      @ObjectModel.association.type: [#TO_COMPOSITION_PARENT, #TO_COMPOSITION_ROOT]
      _Error
} 
 