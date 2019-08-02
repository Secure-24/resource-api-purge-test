# resource-api-purge-test
Simple test case for testing Puppet Resource API types with [`purge`](https://github.com/crayfishx/puppet-purge.git) type

Tested with Puppet 5.5.10, puppet-resource_api gem 1.8.4, and [`purge`](https://github.com/crayfishx/puppet-purge.git) commit e523a05.

## Setup

Clone the forked `purge` repo:

```sh
git clone https://github.com/Secure-24/puppet-purge.git modules/purge
```

## Testing

### Broken case

```sh
$ puppet apply --test --modulepath=modules --execute "purge { 'fake_resource': }"
Notice: Compiled catalog for localhost in environment production in 0.04 seconds
Error: /Stage[main]/Main/Purge[fake_resource]: Failed to generate additional resources using 'generate': undefined method `ensure' for nil:NilClass
Info: Applying configuration version '1564770893'
Notice: Applied catalog in 0.02 seconds
```
### Working case

```sh
$ cd modules/purge/

$ git checkout handle-missing-property-method

$ cd -

$ puppet apply --test --modulepath=modules --execute "purge { 'fake_resource': }"
Notice: Compiled catalog for localhost in environment production in 0.03 seconds
Info: Applying configuration version '1564770989'
Notice: /Stage[main]/Main/Purge[fake_resource]/ensure: ensure changed 'purgable' to 'purged'
Notice: /Stage[main]/Main/Fake_resource[fake_resource_0]/ensure: undefined 'ensure' from 'present'
Notice: fake_resource[fake_resource_0]: Deleting: Deleting 'fake_resource_0'
Notice: fake_resource[fake_resource_0]: Deleting: Finished in 0.000056 seconds
Notice: /Stage[main]/Main/Fake_resource[fake_resource_1]/ensure: undefined 'ensure' from 'present'
Notice: fake_resource[fake_resource_1]: Deleting: Deleting 'fake_resource_1'
Notice: fake_resource[fake_resource_1]: Deleting: Finished in 0.000048 seconds
Notice: /Stage[main]/Main/Fake_resource[fake_resource_2]/ensure: undefined 'ensure' from 'present'
Notice: fake_resource[fake_resource_2]: Deleting: Deleting 'fake_resource_2'
Notice: fake_resource[fake_resource_2]: Deleting: Finished in 0.000042 seconds
Notice: /Stage[main]/Main/Fake_resource[fake_resource_3]/ensure: undefined 'ensure' from 'present'
Notice: fake_resource[fake_resource_3]: Deleting: Deleting 'fake_resource_3'
Notice: fake_resource[fake_resource_3]: Deleting: Finished in 0.000073 seconds
Notice: /Stage[main]/Main/Fake_resource[fake_resource_4]/ensure: undefined 'ensure' from 'present'
Notice: fake_resource[fake_resource_4]: Deleting: Deleting 'fake_resource_4'
Notice: fake_resource[fake_resource_4]: Deleting: Finished in 0.000054 seconds
Notice: /Stage[main]/Main/Fake_resource[fake_resource_5]/ensure: undefined 'ensure' from 'present'
Notice: fake_resource[fake_resource_5]: Deleting: Deleting 'fake_resource_5'
Notice: fake_resource[fake_resource_5]: Deleting: Finished in 0.000040 seconds
Notice: /Stage[main]/Main/Fake_resource[fake_resource_6]/ensure: undefined 'ensure' from 'present'
Notice: fake_resource[fake_resource_6]: Deleting: Deleting 'fake_resource_6'
Notice: fake_resource[fake_resource_6]: Deleting: Finished in 0.000045 seconds
Notice: /Stage[main]/Main/Fake_resource[fake_resource_7]/ensure: undefined 'ensure' from 'present'
Notice: fake_resource[fake_resource_7]: Deleting: Deleting 'fake_resource_7'
Notice: fake_resource[fake_resource_7]: Deleting: Finished in 0.000045 seconds
Notice: /Stage[main]/Main/Fake_resource[fake_resource_8]/ensure: undefined 'ensure' from 'present'
Notice: fake_resource[fake_resource_8]: Deleting: Deleting 'fake_resource_8'
Notice: fake_resource[fake_resource_8]: Deleting: Finished in 0.000055 seconds
Notice: /Stage[main]/Main/Fake_resource[fake_resource_9]/ensure: undefined 'ensure' from 'present'
Notice: fake_resource[fake_resource_9]: Deleting: Deleting 'fake_resource_9'
Notice: fake_resource[fake_resource_9]: Deleting: Finished in 0.000041 seconds
Notice: /Stage[main]/Main/Fake_resource[fake_resource_10]/ensure: undefined 'ensure' from 'present'
Notice: fake_resource[fake_resource_10]: Deleting: Deleting 'fake_resource_10'
Notice: fake_resource[fake_resource_10]: Deleting: Finished in 0.000042 seconds
Notice: /Stage[main]/Main/Fake_resource[fake_resource_11]/ensure: undefined 'ensure' from 'present'
Notice: fake_resource[fake_resource_11]: Deleting: Deleting 'fake_resource_11'
Notice: fake_resource[fake_resource_11]: Deleting: Finished in 0.000042 seconds
Notice: /Stage[main]/Main/Fake_resource[fake_resource_12]/ensure: undefined 'ensure' from 'present'
Notice: fake_resource[fake_resource_12]: Deleting: Deleting 'fake_resource_12'
Notice: fake_resource[fake_resource_12]: Deleting: Finished in 0.000041 seconds
Notice: /Stage[main]/Main/Fake_resource[fake_resource_13]/ensure: undefined 'ensure' from 'present'
Notice: fake_resource[fake_resource_13]: Deleting: Deleting 'fake_resource_13'
Notice: fake_resource[fake_resource_13]: Deleting: Finished in 0.000088 seconds
Notice: /Stage[main]/Main/Fake_resource[fake_resource_14]/ensure: undefined 'ensure' from 'present'
Notice: fake_resource[fake_resource_14]: Deleting: Deleting 'fake_resource_14'
Notice: fake_resource[fake_resource_14]: Deleting: Finished in 0.000041 seconds
Notice: /Stage[main]/Main/Fake_resource[fake_resource_15]/ensure: undefined 'ensure' from 'present'
Notice: fake_resource[fake_resource_15]: Deleting: Deleting 'fake_resource_15'
Notice: fake_resource[fake_resource_15]: Deleting: Finished in 0.000041 seconds
Notice: /Stage[main]/Main/Fake_resource[fake_resource_16]/ensure: undefined 'ensure' from 'present'
Notice: fake_resource[fake_resource_16]: Deleting: Deleting 'fake_resource_16'
Notice: fake_resource[fake_resource_16]: Deleting: Finished in 0.000053 seconds
Notice: /Stage[main]/Main/Fake_resource[fake_resource_17]/ensure: undefined 'ensure' from 'present'
Notice: fake_resource[fake_resource_17]: Deleting: Deleting 'fake_resource_17'
Notice: fake_resource[fake_resource_17]: Deleting: Finished in 0.000060 seconds
Notice: /Stage[main]/Main/Fake_resource[fake_resource_18]/ensure: undefined 'ensure' from 'present'
Notice: fake_resource[fake_resource_18]: Deleting: Deleting 'fake_resource_18'
Notice: fake_resource[fake_resource_18]: Deleting: Finished in 0.000075 seconds
Notice: /Stage[main]/Main/Fake_resource[fake_resource_19]/ensure: undefined 'ensure' from 'present'
Notice: fake_resource[fake_resource_19]: Deleting: Deleting 'fake_resource_19'
Notice: fake_resource[fake_resource_19]: Deleting: Finished in 0.000044 seconds
Notice: /Stage[main]/Main/Fake_resource[fake_resource_20]/ensure: undefined 'ensure' from 'present'
Notice: fake_resource[fake_resource_20]: Deleting: Deleting 'fake_resource_20'
Notice: fake_resource[fake_resource_20]: Deleting: Finished in 0.000046 seconds
Notice: Applied catalog in 0.05 seconds
```
