{
    "id": "b2db0f61-1fd0-4824-a97b-88a402b91f29",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "execute_program_pipe",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 113497714299118,
    "date": "2020-24-19 11:03:21",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "84157da1-3357-467a-afda-08b97f6bb9b1",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "bca25fc5-7dfb-4b34-9e35-4fe4076fa26f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "program_pipe_flags_hide_window",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "d6d212ca-6c15-4492-bf8a-206e06ebb598",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "program_pipe_flags_capture_stdout",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "8988badb-493e-462b-9039-7a7e7df1bdcb",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "program_pipe_flags_capture_stderr",
                    "hidden": false,
                    "value": "4"
                }
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "execute_program_pipe.dll",
            "final": "",
            "functions": [
                {
                    "id": "d5683d04-f731-44a4-a69c-8c0434621024",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "execute_program_pipe_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "execute_program_pipe_raw",
                    "returnType": 1
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\execute_program_pipe.dll",
            "uncompress": false
        },
        {
            "id": "a3ed4688-e677-40f1-bb1b-7f08dce1a490",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "execute_program_pipe.gml",
            "final": "",
            "functions": [
                {
                    "id": "1cbcb543-7ceb-415f-8463-3ac1dc6d03f4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "execute_program_pipe",
                    "help": "execute_program_pipe(command, flags = *stdout|stderr)->[status:int, exitcode:int, output:string]",
                    "hidden": false,
                    "kind": 2,
                    "name": "execute_program_pipe",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\gml.gml",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "Proprietary",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "",
    "productID": "726CC2FFB0DFD7A5AD9F2A886B0AFCF2",
    "sourcedir": "",
    "supportedTargets": 113497714299118,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "1.0.0"
}