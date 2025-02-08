# Virtual Start Node Details

## Node Information
- ID: 7996532164620512845
- Path: devinTestSparkSQL19/startnode
- Type: VIRTUAL
- Container ID: 6499733942135546679

## Creation Command
```bash
aliyun dataworks-public CreateNode \
--ProjectId 257880 \
--Scene "DataworksProject" \
--ContainerId "6499733942135546679" \
--Spec "$(cat start_node_spec.json)"
```

## Node Specification
```json
{
    "version": "1.1.0",
    "kind": "Node",
    "spec": {
        "nodes": [
            {
                "recurrence": "Normal",
                "timeout": 0,
                "instanceMode": "T+1",
                "rerunMode": "Allowed",
                "rerunTimes": 3,
                "rerunInterval": 180000,
                "script": {
                    "path": "devinTestSparkSQL19/startnode",
                    "runtime": {
                        "command": "VIRTUAL",
                        "commandTypeId": 99,
                        "cu": "0"
                    }
                },
                "name": "startnode",
                "owner": "200527038829996354",
                "metadata": {
                    "container": {
                        "type": "Flow",
                        "uuid": "6499733942135546679"
                    }
                }
            }
        ]
    }
}
```
