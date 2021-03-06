---
title: oci core volume group
keywords: documentation
layout: documentation
sidebar: oci_config_sidebar
toc: false
---
## Overview

  Specifies a volume group which is a collection of
volumes. For more information, see [Volume Groups](https://docs.cloud.oracle.com/Content/Block/Concepts/volumegroups.htm).

**Warning:** Oracle recommends that you avoid using any confidential information when you
supply string values using the API.

  Here is an example on how to use this:

    oci_core_volume_group { 'tenant (root)/my_volume_group':
      ensure              => 'present',
      availability_domain => 'arMl:EU-FRANKFURT-1-AD-1',
      volumes             => ['my_compartment/my_volume_1'],
    }

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).

## Attributes



Attribute Name                                                                | Short Description                                                                                                           |
----------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
[absent_states](#oci_core_volume_group_absent_states)                         | The OCI states, puppet will detect as the resource being absent.                                                            |
[availability_domain](#oci_core_volume_group_availability_domain)             | The availability domain of the volume group.                                                                                |
[compartment](#oci_core_volume_group_compartment)                             | The Puppet name of the resource identified by `compartment_id`.                                                             |
[compartment_id](#oci_core_volume_group_compartment_id)                       | The OCID of the compartment that contains the object.                                                                       |
[defined_tags](#oci_core_volume_group_defined_tags)                           |   Defined tags for this resource.                                                                                           |
[disable_corrective_change](#oci_core_volume_group_disable_corrective_change) | Disable the modification of a resource when Puppet decides it is a corrective change.                                       |
[disable_corrective_ensure](#oci_core_volume_group_disable_corrective_ensure) | Disable the creation or removal of a resource when Puppet decides is a corrective change.                                   |
[ensure](#oci_core_volume_group_ensure)                                       | The basic property that the resource should be in.                                                                          |
[freeform_tags](#oci_core_volume_group_freeform_tags)                         |   Free-form tags for this resource.                                                                                         |
[id](#oci_core_volume_group_id)                                               | The OCID of the resource.                                                                                                   |
[is_hydrated](#oci_core_volume_group_is_hydrated)                             | Specifies whether the newly created cloned volume group's data has finished copying from the source volume group or backup. |
[lifecycle_state](#oci_core_volume_group_lifecycle_state)                     | The current state of a volume group.                                                                                        |
[name](#oci_core_volume_group_name)                                           | The full name of the object.                                                                                                |
[oci_timeout](#oci_core_volume_group_oci_timeout)                             | The maximum time to wait for the OCI resource to be in the ready state.                                                     |
[oci_wait_interval](#oci_core_volume_group_oci_wait_interval)                 | The interval beween calls to OCI to check if a resource is in the ready state.                                              |
[present_states](#oci_core_volume_group_present_states)                       | The OCI states, puppet will detect as the resource being present.                                                           |
[provider](#oci_core_volume_group_provider)                                   | resource.                                                                                                                   |
[size_in_gbs](#oci_core_volume_group_size_in_gbs)                             | The aggregate size of the volume group in GBs.                                                                              |
[size_in_mbs](#oci_core_volume_group_size_in_mbs)                             | The aggregate size of the volume group in MBs.                                                                              |
[synchronized](#oci_core_volume_group_synchronized)                           | Specifies if Puppet waits for OCI actions to be ready before moving on to an other resource.                                |
[tenant](#oci_core_volume_group_tenant)                                       | The tenant for this resource.                                                                                               |
[time_created](#oci_core_volume_group_time_created)                           | The date and time the volume group was created.                                                                             |
[volume_group_name](#oci_core_volume_group_volume_group_name)                 | The name of the volume_group.                                                                                               |
[volume_ids](#oci_core_volume_group_volume_ids)                               | OCIDs for the volumes in this volume group.                                                                                 |
[volumes](#oci_core_volume_group_volumes)                                     | The Puppet name of the resource identified by `volume_ids`.                                                                 |




### absent_states<a name='oci_core_volume_group_absent_states'>

The OCI states, puppet will detect as the resource being absent.



[Back to overview of oci_core_volume_group](#attributes)

### availability_domain<a name='oci_core_volume_group_availability_domain'>

The availability domain of the volume group.

This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).



[Back to overview of oci_core_volume_group](#attributes)

### compartment<a name='oci_core_volume_group_compartment'>

The Puppet name of the resource identified by `compartment_id`.

See the documentation of compartment_id for all details.

This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).



[Back to overview of oci_core_volume_group](#attributes)

### compartment_id<a name='oci_core_volume_group_compartment_id'>

The OCID of the compartment that contains the object.

Rather use the property `compartment` instead of a direct OCID reference.

This documentation is generated from the Ruby OCI SDK.



[Back to overview of oci_core_volume_group](#attributes)

### defined_tags<a name='oci_core_volume_group_defined_tags'>

  Defined tags for this resource. Each key is predefined and scoped to a
namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm).

Example: `{"Operations": {"CostCenter": "42"}}`

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).



[Back to overview of oci_core_volume_group](#attributes)

### disable_corrective_change<a name='oci_core_volume_group_disable_corrective_change'>

Disable the modification of a resource when Puppet decides it is a corrective change.

(requires easy_type V2.11.0 or higher)

When using a Puppet Server, Puppet knows about adaptive and corrective changes. A corrective change
is when Puppet notices that the resource has changed, but the catalog has not changed. This can occur
for example, when a user, by accident or willingly, changed something on the system that Puppet is
managing. The normal Puppet process then repairs this and puts the resource back in the state as defined
in the catalog. This process is precisely what you want most of the time, but not always. This can
sometimes also occur when a hardware or network error occurs. Then Puppet cannot correctly determine
the current state of the system and thinks the resource is changed, while in fact, it is not. Letting
Puppet recreate remove or change the resource in these cases, is NOT wat you want.

Using the `disable_corrective_change` parameter, you can disable corrective changes on the current resource.

Here is an example of this:

    crucial_resource {'be_carefull':
      ...
      disable_corrective_change => true,
      ...
    }

When a corrective ensure does happen on the resource Puppet will not modify the resource
and signal an error:

        Error: Corrective change present requested by catalog, but disabled by parameter disable_corrective_change
        Error: /Stage[main]/Main/Crucial_resource[be_carefull]/parameter: change from '10' to '20' failed: Corrective change present requested by catalog, but disabled by parameter disable_corrective_change. (corrective)



[Back to overview of oci_core_volume_group](#attributes)

### disable_corrective_ensure<a name='oci_core_volume_group_disable_corrective_ensure'>

Disable the creation or removal of a resource when Puppet decides is a corrective change.

(requires easy_type V2.11.0 or higher)

When using a Puppet Server, Puppet knows about adaptive and corrective changes. A corrective change
is when Puppet notices that the resource has changed, but the catalog has not changed. This can occur
for example, when a user, by accident or willingly, changed something on the system that Puppet is
managing. The normal Puppet process then repairs this and puts the resource back in the state as defined
in the catalog. This process is precisely what you want most of the time, but not always. This can
sometimes also occur when a hardware or network error occurs. Then Puppet cannot correctly determine
the current state of the system and thinks the resource is changed, while in fact, it is not. Letting
Puppet recreate remove or change the resource in these cases, is NOT wat you want.

Using the `disable_corrective_ensure` parameter, you can disable corrective ensure present or ensure absent actions on the current resource.

Here is an example of this:

    crucial_resource {'be_carefull':
      ensure                    => 'present',
      ...
      disable_corrective_ensure => true,
      ...
    }

When a corrective ensure does happen on the resource Puppet will not create or remove the resource
and signal an error:

        Error: Corrective ensure present requested by catalog, but disabled by parameter disable_corrective_ensure.
        Error: /Stage[main]/Main/Crucial_resource[be_carefull]/ensure: change from 'absent' to 'present' failed: Corrective ensure present requested by catalog, but disabled by parameter disable_corrective_ensure. (corrective)



[Back to overview of oci_core_volume_group](#attributes)

### ensure<a name='oci_core_volume_group_ensure'>

The basic property that the resource should be in.

Valid values are `present`, `absent`. 

[Back to overview of oci_core_volume_group](#attributes)

### freeform_tags<a name='oci_core_volume_group_freeform_tags'>

  Free-form tags for this resource. Each tag is a simple key-value pair with no
predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm).

Example: `{"Department": "Finance"}`

  This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).



[Back to overview of oci_core_volume_group](#attributes)

### id<a name='oci_core_volume_group_id'>

The OCID of the resource. This is a read-only property.

This documentation is generated from the Ruby OCI SDK.



[Back to overview of oci_core_volume_group](#attributes)

### is_hydrated<a name='oci_core_volume_group_is_hydrated'>

Specifies whether the newly created cloned volume group's data has finished copying from the source volume group or backup.

This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).



[Back to overview of oci_core_volume_group](#attributes)

### lifecycle_state<a name='oci_core_volume_group_lifecycle_state'>

The current state of a volume group.

This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).



[Back to overview of oci_core_volume_group](#attributes)

### name<a name='oci_core_volume_group_name'>

The full name of the object.



[Back to overview of oci_core_volume_group](#attributes)

### oci_timeout<a name='oci_core_volume_group_oci_timeout'>

The maximum time to wait for the OCI resource to be in the ready state.



[Back to overview of oci_core_volume_group](#attributes)

### oci_wait_interval<a name='oci_core_volume_group_oci_wait_interval'>

The interval beween calls to OCI to check if a resource is in the ready state.



[Back to overview of oci_core_volume_group](#attributes)

### present_states<a name='oci_core_volume_group_present_states'>

The OCI states, puppet will detect as the resource being present.



[Back to overview of oci_core_volume_group](#attributes)

### provider<a name='oci_core_volume_group_provider'>

The specific backend to use for this `oci_core_volume_group`
resource. You will seldom need to specify this --- Puppet will usually
discover the appropriate provider for your platform.Available providers are:

sdk
: This provider uses the [Oracle Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk) to do its work.



[Back to overview of oci_core_volume_group](#attributes)

### size_in_gbs<a name='oci_core_volume_group_size_in_gbs'>

The aggregate size of the volume group in GBs.

This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).



[Back to overview of oci_core_volume_group](#attributes)

### size_in_mbs<a name='oci_core_volume_group_size_in_mbs'>

The aggregate size of the volume group in MBs.

This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).



[Back to overview of oci_core_volume_group](#attributes)

### synchronized<a name='oci_core_volume_group_synchronized'>

Specifies if Puppet waits for OCI actions to be ready before moving on to an other resource.



[Back to overview of oci_core_volume_group](#attributes)

### tenant<a name='oci_core_volume_group_tenant'>

The tenant for this resource.



[Back to overview of oci_core_volume_group](#attributes)

### time_created<a name='oci_core_volume_group_time_created'>

The date and time the volume group was created. Format defined by RFC3339.

This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).



[Back to overview of oci_core_volume_group](#attributes)

### volume_group_name<a name='oci_core_volume_group_volume_group_name'>

The name of the volume_group.



[Back to overview of oci_core_volume_group](#attributes)

### volume_ids<a name='oci_core_volume_group_volume_ids'>

OCIDs for the volumes in this volume group.
Rather use the property `volumes` instead of a direct OCID reference.

This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).



[Back to overview of oci_core_volume_group](#attributes)

### volumes<a name='oci_core_volume_group_volumes'>

The Puppet name of the resource identified by `volume_ids`.

See the documentation of volume_ids for all details.

This documentation is generated from the [Ruby OCI SDK](https://github.com/oracle/oci-ruby-sdk).



[Back to overview of oci_core_volume_group](#attributes)
