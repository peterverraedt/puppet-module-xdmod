# Reference
<!-- DO NOT EDIT: This document was generated by Puppet Strings -->

## Table of Contents

**Classes**

_Public Classes_

* [`xdmod`](#xdmod): Manage XDMoD

_Private Classes_

* `xdmod::akrr::config`: Manage XDMoD AKRR configs
* `xdmod::akrr::install`: Manage XDMoD AKRR install
* `xdmod::akrr::service`: Manage XDMoD AKRR service
* `xdmod::akrr::user`: Manage XDMoD AKRR user
* `xdmod::apache`: Manage XDMoD Apache configs
* `xdmod::config`: Manage XDMoD configs
* `xdmod::config::simplesamlphp`: Manage XDMoD simplesamlphp
* `xdmod::database`: Manage XDMoD databases
* `xdmod::install`: Manage XDMoD packages
* `xdmod::params`: XDMoD module defaults
* `xdmod::supremm::compute::pcp`: Manage XDMoD compute PCP
* `xdmod::supremm::config`: Manage XDMoD SUPReMM configs
* `xdmod::supremm::database`: Manage XDMoD SUPReMM databases
* `xdmod::supremm::install`: Manage XDMoD SUPReMM packages
* `xdmod::user`: Manage XDMoD user

**Defined types**

* [`xdmod::akrr::setting`](#xdmodakrrsetting): Manage AKRR config setting value

**Resource types**

* [`xdmod_appkernel_setting`](#xdmod_appkernel_setting): Section/setting name to manage from appkernels.ini
* [`xdmod_portal_setting`](#xdmod_portal_setting): Section/setting name to manage from portal_settings.ini
* [`xdmod_supremm_setting`](#xdmod_supremm_setting): Section/setting name to manage from supremm.ini

**Functions**

* [`xdmod::member_substring`](#xdmodmember_substring): Function to test member substring

**Data types**

* [`Xdmod::Hierarchy_Levels`](#xdmodhierarchy_levels): 
* [`Xdmod::Resource`](#xdmodresource): 
* [`Xdmod::Resource_Spec`](#xdmodresource_spec): 
* [`Xdmod::Supremm_Resource`](#xdmodsupremm_resource): 

## Classes

### xdmod

Manage XDMoD

#### Parameters

The following parameters are available in the `xdmod` class.

##### `version`

Data type: `String`

Version of XDMoD to install

Default value: $xdmod::params::version

##### `xdmod_appkernels_version`

Data type: `String`

Version of XDMoD AppKernels to install

Default value: $xdmod::params::xdmod_appkernels_version

##### `xdmod_supremm_version`

Data type: `String`

Version of XDMoD SUPReMM to install

Default value: $xdmod::params::xdmod_supremm_version

##### `database`

Data type: `Boolean`

Sets database role

Default value: `true`

##### `web`

Data type: `Boolean`

Sets web role

Default value: `true`

##### `akrr`

Data type: `Boolean`

Sets akrr role

Default value: `false`

##### `supremm`

Data type: `Boolean`

Sets supremm role

Default value: `false`

##### `supremm_database`

Data type: `Boolean`

Sets supremm database role

Default value: `false`

##### `compute`

Data type: `Boolean`

Sets compute role

Default value: `false`

##### `enable_appkernel`

Data type: `Boolean`

Enable XDMoD AppKernel support

Default value: `false`

##### `enable_supremm`

Data type: `Boolean`

Enable XDMod SUPReMM support

Default value: `false`

##### `local_repo_name`

Data type: `Optional[String]`

Name of yum repo hosting RPMs

Default value: `undef`

##### `manage_epel`

Data type: `Boolean`

Boolean that sets if EPEL should be managed

Default value: `true`

##### `package_ensure`

Data type: `String`

XDMoD package ensure property

Default value: 'present'

##### `xdmod_supremm_package_ensure`

Data type: `String`

XDMoD supremm package ensure property

Default value: 'present'

##### `xdmod_appkernels_package_ensure`

Data type: `String`

XDMoD appkernels package ensure property

Default value: 'present'

##### `package_name`

Data type: `String`

XDMoD package name

Default value: $xdmod::params::package_name

##### `package_url`

Data type: `Variant[Stdlib::HTTPSUrl, Stdlib::HTTPUrl]`

XDMoD package RPM URL, not used if `local_repo_name` is defined

Default value: $xdmod::params::package_url

##### `appkernels_package_name`

Data type: `String`

XDMoD appkernels package name

Default value: $xdmod::params::appkernels_package_name

##### `appkernels_package_url`

Data type: `Variant[Stdlib::HTTPSUrl, Stdlib::HTTPUrl]`

XDMoD appkernels package RPM URL, not used if `local_repo_name` is defined

Default value: $xdmod::params::appkernels_package_url

##### `xdmod_supremm_package_name`

Data type: `String`

XDMoD supremm package name

Default value: $xdmod::params::xdmod_supremm_package_name

##### `xdmod_supremm_package_url`

Data type: `Variant[Stdlib::HTTPSUrl, Stdlib::HTTPUrl]`

XDMoD supremm package RPM URL, not used if `local_repo_name` is defined

Default value: $xdmod::params::xdmod_supremm_package_url

##### `database_host`

Data type: `String`

XDMoD database host

Default value: 'localhost'

##### `database_port`

Data type: `Integer`

XDMoD database port

Default value: 3306

##### `database_user`

Data type: `String`

XDMoD database user

Default value: 'xdmod'

##### `database_password`

Data type: `String`

XDMoD database password

Default value: 'changeme'

##### `akrr_database_user`

Data type: `String`

AKRR database user

Default value: 'akrr'

##### `akrr_database_password`

Data type: `String`

AKRR database password

Default value: 'changeme'

##### `web_host`

Data type: `String`

FQDN of web host

Default value: 'localhost'

##### `akrr_host`

Data type: `String`

FQDN of AKRR host

Default value: 'localhost'

##### `scheduler`

Data type: `Enum['slurm','torque','pbs','sge']`

Scheduler to shred, used to define default shred commands and PI column

Default value: 'slurm'

##### `shredder_command`

Data type: `Optional[Variant[String, Array]]`

Shred command(s)

Default value: `undef`

##### `shred_hour_start`

Data type: `Integer[0,23]`

The numeric hour to start shredding

Default value: 1

##### `shred_minutes`

Data type: `Integer`

Time in minutes between shred operations if multiple shred commands

Default value: 5

##### `ingest_hour`

Data type: `Optional[Integer[0,23]]`

The numeric hour to start ingest

Default value: `undef`

##### `enable_update_check`

Data type: `Boolean`

Enable XDMoD update check

Default value: `true`

##### `manage_apache_vhost`

Data type: `Boolean`

Manage the XMDoD Apache Virtual Host

Default value: `true`

##### `apache_vhost_name`

Data type: `String`

The Apache Virtual Host name

Default value: $xdmod::params::apache_vhost_name

##### `apache_ssl_cert`

Data type: `Stdlib::Unixpath`

Path to SSL cert used by Apache

Default value: '/etc/pki/tls/certs/localhost.crt'

##### `apache_ssl_key`

Data type: `Stdlib::Unixpath`

Path to SSL private key used by Apache

Default value: '/etc/pki/tls/private/localhost.key'

##### `apache_ssl_chain`

Data type: `Optional[Stdlib::Unixpath]`

Path to SSL chain used by Apache

Default value: `undef`

##### `portal_settings`

Data type: `Hash`

Hash of portal_settings.ini settings to pass to `xdmod_portal_setting` resources

Default value: $xdmod::params::portal_settings

##### `hierarchy_levels`

Data type: `Xdmod::Hierarchy_Levels`

Hierarchy levels used when defining hierarchies

Default value: $xdmod::params::hierarchy_levels

##### `hierarchies`

Data type: `Array`

Hierarchy lines, see XDMoD docs

Default value: $xdmod::params::hierarchies

##### `group_to_hierarchy`

Data type: `Hash`

Group to Hierarchy mappings, see XDMoD docs

Default value: $xdmod::params::group_to_hierarchy

##### `user_pi_names`

Data type: `Array`

User and PI names, see XDMoD docs

Default value: $xdmod::params::user_pi_names

##### `organization_name`

Data type: `Optional[String]`

Organization name for XDMoD instance

Default value: `undef`

##### `organization_abbrev`

Data type: `Optional[String]`

Organization abbreviation for XDMoD instance

Default value: `undef`

##### `resources`

Data type: `Array[Xdmod::Resource]`

Resources to define resources.json

Default value: []

##### `resource_specs`

Data type: `Array[Xdmod::Resource_Spec]`

Resource specs for resource_specs.json

Default value: []

##### `sender_email`

Data type: `String`

Configure sender for EMail

Default value: $xdmod::params::sender_email

##### `debug_recipient`

Data type: `String`

Configure email addres to receive debug information

Default value: ''

##### `php_timezone`

Data type: `Optional[String]`

PHP Timezone

Default value: `undef`

##### `center_logo_source`

Data type: `Optional[String]`

Source to image that will be used as center logo in XDMoD

Default value: `undef`

##### `center_logo_width`

Data type: `Optional[Integer]`

The width of file from `center_logo_source`

Default value: `undef`

##### `user_dashboard`

Data type: `Enum['on','off']`

The value for `user_dashboard` in portal_settings.ini

Default value: 'off'

##### `manage_user`

Data type: `Boolean`

Boolean that sets if managing XMDoD user

Default value: `true`

##### `user_uid`

Data type: `Optional[Integer]`

XMDoD user UID

Default value: `undef`

##### `group_gid`

Data type: `Optional[Integer]`

XDMoD user group GID

Default value: `undef`

##### `data_warehouse_export_directory`

Data type: `Stdlib::Absolutepath`

Path used for data warehouse export

Default value: '/var/spool/xdmod/export'

##### `data_warehouse_export_retention_duration_days`

Data type: `Integer`

portal_settings.ini section=data_warehouse_export setting=retention_duration_days

Default value: 30

##### `data_warehouse_export_hash_salt`

Data type: `String`

portal_settings.ini section=data_warehouse_export setting=hash_salt

Default value: sha256($::fqdn)

##### `batch_export_cron_times`

Data type: `Array[Integer, 2 ,2]`

cron times to run batch export

Default value: [0,4]

##### `manage_simplesamlphp`

Data type: `Boolean`

Boolean that sets if managing simplesamlphp

Default value: `false`

##### `simplesamlphp_config_content`

Data type: `Optional[String]`

The content for simplesamlphp config

Default value: `undef`

##### `simplesamlphp_config_source`

Data type: `Optional[String]`

The source for simplesamlphp config

Default value: `undef`

##### `simplesamlphp_authsources_content`

Data type: `Optional[String]`

The content for simplesaml php authsources

Default value: `undef`

##### `simplesamlphp_authsources_source`

Data type: `Optional[String]`

The source for simplesaml php authsources

Default value: `undef`

##### `simplesamlphp_metadata_content`

Data type: `Optional[String]`

The simplesamlphp metadata content

Default value: `undef`

##### `simplesamlphp_metadata_source`

Data type: `Optional[String]`

The simplesamlphp metadata source

Default value: `undef`

##### `simplesamlphp_cert_country`

Data type: `String`

The simplesamlphp cert country

Default value: 'US'

##### `simplesamlphp_cert_organization`

Data type: `Optional[String]`

The simplesamlphp cert organization

Default value: `undef`

##### `simplesamlphp_cert_commonname`

Data type: `Optional[String]`

The simplesamlphp cert commonname

Default value: `undef`

##### `akrr_source_url`

Data type: `Variant[Stdlib::HTTPSUrl, Stdlib::HTTPUrl]`

The AKRR source URL

Default value: $xdmod::params::akrr_source_url

##### `akrr_version`

Data type: `String`

The AKRR version. This version is used to build default `akrr_source_url`.

Default value: $xdmod::params::akrr_version

##### `akrr_home`

Data type: `Optional[Stdlib::Unixpath]`

AKRR home path

Default value: `undef`

##### `manage_akrr_user`

Data type: `Boolean`

Boolean to manage AKRR user

Default value: `true`

##### `akrr_user`

Data type: `String`

AKRR username

Default value: 'akrr'

##### `akrr_user_group`

Data type: `String`

AKRR user group name

Default value: 'akrr'

##### `akrr_user_group_gid`

Data type: `Optional[Integer]`

AKRR user gropu GID

Default value: `undef`

##### `akrr_user_uid`

Data type: `Optional[Integer]`

AKRR user UID

Default value: `undef`

##### `akrr_user_shell`

Data type: `Stdlib::Unixpath`

AKRR user shell

Default value: '/bin/bash'

##### `akrr_user_home`

Data type: `Optional[Stdlib::Unixpath]`

AKRR user home

Default value: `undef`

##### `akrr_user_managehome`

Data type: `Boolean`

AKRR user managehome property

Default value: `true`

##### `akrr_user_comment`

Data type: `String`

AKRR user comment

Default value: 'AKRR'

##### `akrr_user_system`

Data type: `Boolean`

AKRR user system property

Default value: `true`

##### `akrr_restapi_port`

Data type: `Integer`

AKRR restapi port

Default value: 8091

##### `akrr_restapi_rw_password`

Data type: `String`

AKRR restapi RW password

Default value: $xdmod::params::akrr_restapi_rw_password

##### `akrr_restapi_ro_password`

Data type: `String`

AKRR restapi RO password

Default value: $xdmod::params::akrr_restapi_ro_password

##### `akrr_cron_mailto`

Data type: `Optional[String]`

AKRR cron MAILTO

Default value: `undef`

##### `akrr_ingestor_cron_times`

Data type: `Array[Integer, 2, 2]`

AKRR ingestor cron times

Default value: [0,5]

##### `appkernel_reports_manager_cron_times`

Data type: `Array[Integer, 2, 2]`

AppKernel report manager cron times

Default value: [0,6]

##### `supremm_version`

Data type: `String`

Version of SUPReMM to install, builds `supremm_package_url` if not defined

Default value: $xdmod::params::supremm_version

##### `supremm_package_ensure`

Data type: `String`

SUPReMM package ensure property

Default value: 'present'

##### `supremm_package_url`

Data type: `Variant[Stdlib::HTTPSUrl, Stdlib::HTTPUrl]`

The URL to download SUPReMM RPM from

Default value: $xdmod::params::supremm_package_url

##### `supremm_package_name`

Data type: `String`

SUPReMM RPM package name

Default value: 'supremm'

##### `supremm_mongodb_password`

Data type: `String`

SUPReMM mongodb password

Default value: 'changeme'

##### `supremm_mongodb_host`

Data type: `String`

SUPReMM mongodb host

Default value: 'localhost'

##### `supremm_mongodb_uri`

Data type: `Optional[String]`

SUPReMM mongodb URI

Default value: `undef`

##### `supremm_mongodb_replica_set`

Data type: `Optional[String]`

SUPReMM mongodb replica set

Default value: `undef`

##### `supremm_resources`

Data type: `Array[Xdmod::Supremm_Resource]`

SUPReMM resources

Default value: []

##### `supremm_update_cron_times`

Data type: `Array[Integer, 2, 2]`

The cron times to run supremm_update

Default value: [0,2]

##### `ingest_jobscripts_cron_times`

Data type: `Array[Integer, 2, 2]`

The cron times to ingest job scripts

Default value: [0,3]

##### `aggregate_supremm_cron_times`

Data type: `Array[Integer, 2, 2]`

The cron times to run supremm aggregation

Default value: [0,4]

##### `supremm_archive_out_dir`

Data type: `Stdlib::Absolutepath`

The path to supremm archive out

Default value: '/dev/shm/supremm_test'

##### `use_pcp`

Data type: `Boolean`

Boolean that PCP should be used for compute environment

Default value: `true`

##### `pcp_declare_method`

Data type: `Enum['include', 'resource']`

Should pcp class be included or declared like a resource

Default value: 'resource'

##### `pcp_resource`

Data type: `Optional[String]`

PCP resource name

Default value: `undef`

##### `pcp_pmlogger_path_suffix`

Data type: `Optional[String]`

PCP pmlogger path suffix

Default value: `undef`

##### `pcp_pmlogger_config_template`

Data type: `String`

Template for pmlogger config

Default value: 'xdmod/supremm/compute/pcp/pmlogger-supremm.config.erb'

##### `pcp_pmlogger_config_source`

Data type: `Optional[String]`

Source for pmlogger config

Default value: `undef`

##### `pcp_logging_static_freq`

Data type: `String`

Frequency for PCP logging static metrics

Default value: '1 hour'

##### `pcp_logging_standard_freq`

Data type: `String`

Frequency for PCP logging standard metrics

Default value: '30 sec'

##### `pcp_static_metrics`

Data type: `Array`

PCP static metrics

Default value: $xdmod::params::supremm_pcp_static_metrics

##### `pcp_standard_metrics`

Data type: `Array`

PCP standard metrics

Default value: $xdmod::params::supremm_pcp_standard_metrics

##### `pcp_environ_metrics`

Data type: `Array`

PCP environment metrics

Default value: $xdmod::params::supremm_pcp_environ_metrics

##### `pcp_merge_metrics`

Data type: `Boolean`

Boolean that PCP metrics should be merged with defaults

Default value: `true`

##### `pcp_hotproc_exclude_users`

Data type: `Array`

Users to exclude from PCP hotproc

Default value: $xdmod::params::supremm_pcp_hotproc_exclude_users

##### `storage_roles_source`

Data type: `String`

The source of storage roles.json

Default value: 'puppet:///modules/xdmod/roles.d/storage.json'

##### `storage_cron_times`

Data type: `Array[Integer, 2, 2]`

The cron times for storage shred/ingest

Default value: [0,5]

## Defined types

### xdmod::akrr::setting

Manage AKRR config setting value

#### Parameters

The following parameters are available in the `xdmod::akrr::setting` defined type.

##### `value`

Data type: `Any`

Setting value

##### `quote`

Data type: `Any`

Should value be quoted

Default value: `undef`

## Resource types

### xdmod_appkernel_setting

Section/setting name to manage from appkernels.ini

#### Properties

The following properties are available in the `xdmod_appkernel_setting` type.

##### `ensure`

Valid values: present, absent

The basic property that the resource should be in.

Default value: present

##### `value`

The value of the setting to be defined.

#### Parameters

The following parameters are available in the `xdmod_appkernel_setting` type.

##### `name`

namevar

Section/setting name to manage from appkernels.ini

##### `secret`

Valid values: `true`, `false`

Whether to hide the value from Puppet logs. Defaults to `false`.

Default value: `false`

### xdmod_portal_setting

Section/setting name to manage from portal_settings.ini

#### Properties

The following properties are available in the `xdmod_portal_setting` type.

##### `ensure`

Valid values: present, absent

The basic property that the resource should be in.

Default value: present

##### `value`

The value of the setting to be defined.

#### Parameters

The following parameters are available in the `xdmod_portal_setting` type.

##### `name`

namevar

Section/setting name to manage from portal_settings.ini

##### `secret`

Valid values: `true`, `false`

Whether to hide the value from Puppet logs. Defaults to `false`.

Default value: `false`

### xdmod_supremm_setting

Section/setting name to manage from supremm.ini

#### Properties

The following properties are available in the `xdmod_supremm_setting` type.

##### `ensure`

Valid values: present, absent

The basic property that the resource should be in.

Default value: present

##### `value`

The value of the setting to be defined.

#### Parameters

The following parameters are available in the `xdmod_supremm_setting` type.

##### `name`

namevar

Section/setting name to manage from supremm.ini

##### `secret`

Valid values: `true`, `false`

Whether to hide the value from Puppet logs. Defaults to `false`.

Default value: `false`

## Functions

### xdmod::member_substring

Type: Ruby 4.x API

Function to test member substring

#### Examples

##### Return `present`

```puppet
member(['nfsclient.bytes.write.server','infiniband.hca.type'], '^nfsclient')
```

##### Return `absent`

```puppet
member(['nfsclient.bytes.write.server','nfsclient.bytes.write.server'], '^infiniband')
```

#### `xdmod::member_substring(Array $array, String $substring)`

Function to test member substring

Returns: `String` Returns `present` if substring in array

##### Examples

###### Return `present`

```puppet
member(['nfsclient.bytes.write.server','infiniband.hca.type'], '^nfsclient')
```

###### Return `absent`

```puppet
member(['nfsclient.bytes.write.server','nfsclient.bytes.write.server'], '^infiniband')
```

##### `array`

Data type: `Array`

The array to check.

##### `substring`

Data type: `String`

The substring used for check.

## Data types

### Xdmod::Hierarchy_Levels

The Xdmod::Hierarchy_Levels data type.

Alias of `Struct[{
  top => Struct[{
    label => String,
    info  => String,
  }],
  Optional[middle] => Struct[{
    label => String,
    info  => String,
  }],
  Optional[bottom] => Struct[{
    label => String,
    info  => String,
  }],
}]`

### Xdmod::Resource

The Xdmod::Resource data type.

Alias of `Struct[{
  resource => String,
  name => String,
  Optional[description] => String,
  Optional[resource_type] => String,
  Optional[pi_column] => String,
  Optional[timezone] => String,
  Optional[shared_jobs] => Boolean,
  Optional[shred_directory] => Stdlib::Absolutepath,
}]`

### Xdmod::Resource_Spec

The Xdmod::Resource_Spec data type.

Alias of `Struct[{
  resource => String,
  start_date => Optional[String],
  end_date => Optional[String],
  processors => Integer,
  nodes => Integer,
  ppn => Integer,
}]`

### Xdmod::Supremm_Resource

The Xdmod::Supremm_Resource data type.

Alias of `Struct[{
  resource => String,
  resource_id => Integer,
  Optional[enabled] => Boolean,
  Optional[datasetmap] => String,
  Optional[datasetmap_source] => String,
  Optional[hardware] => Struct[{
    Optional[gpfs] => Variant[String, Array],
    Optional[network] => Variant[String, Array],
    Optional[mounts] => Hash,
    Optional[block] => Variant[String, Array],
    Optional[gpus] => Variant[String, Array],
  }],
  Optional[hostname_mode] => Enum['fqdn','hostname'],
  Optional[pcp_log_dir] => Stdlib::Unixpath,
  Optional[script_dir] => Stdlib::Unixpath,
  Optional[fast_index] => Boolean,
  Optional[timezone] => String,
}]`
