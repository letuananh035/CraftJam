{
    "id": "897059ab-6c2a-4b63-a648-db09480cff45",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "shader_replace_simple",
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
    "copyToTargets": 35223026794670,
    "date": "2019-34-12 01:12:29",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "bac80d6c-a2e2-445c-9d9d-6141adb131a5",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "shader_replace_simple.dll",
            "final": "",
            "functions": [
                {
                    "id": "d2c2df99-7f71-a4d0-240e-70c4f606449f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "shader_replace_simple_sync",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "shader_replace_simple_sync",
                    "returnType": 2
                },
                {
                    "id": "4b5b4600-b3bd-6849-5379-52e6d8bd11c6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        1,
                        1
                    ],
                    "externalName": "shader_replace_simple_init_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "shader_replace_simple_init_raw",
                    "returnType": 2
                },
                {
                    "id": "6878cb1a-9dc2-6e15-3fb1-1f089d17a474",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        1,
                        1
                    ],
                    "externalName": "shader_replace_simple_raw",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "shader_replace_simple_raw",
                    "returnType": 1
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\shader_replace_simple.dll",
            "uncompress": false
        },
        {
            "id": "7cc73678-e3b5-432b-8372-a1d5779ceb4b",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "2d3d2066-f7f9-2c2f-dbf1-f84c732466b0",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "shader_set",
                    "hidden": true,
                    "value": "shader_replace_simple_set_hook"
                },
                {
                    "id": "6b701324-c3de-da97-20dc-930cb6b0935b",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "shader_replace_simple_set_base",
                    "hidden": true,
                    "value": "shader_set"
                },
                {
                    "id": "975a9e4f-c53f-b3c5-4262-2c4efb7c6a94",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "shader_reset",
                    "hidden": true,
                    "value": "shader_replace_simple_reset_hook"
                },
                {
                    "id": "0310ae1c-ce02-58de-1cda-53969ad3d2b9",
                    "modelName": "GMExtensionFile",
                    "mvc": "1.0",
                    "constantName": "shader_replace_simple_reset_base",
                    "hidden": true,
                    "value": "shader_reset"
                }
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "shader_replace_simple.gml",
            "final": "",
            "functions": [
                {
                    "id": "a5d4c2ff-aefe-9a56-391a-622a63df4808",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "shader_replace_simple_init",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "shader_replace_simple_init",
                    "returnType": 2
                },
                {
                    "id": "b1c57580-3613-903a-e8eb-14d55a8b13ca",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "shader_replace_simple_reset_hook",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "shader_replace_simple_reset_hook",
                    "returnType": 2
                },
                {
                    "id": "261c0742-d34a-0708-7fc3-de8a7c27e730",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "shader_replace_simple_set_hook",
                    "help": "",
                    "hidden": true,
                    "kind": 11,
                    "name": "shader_replace_simple_set_hook",
                    "returnType": 2
                },
                {
                    "id": "9c4f853e-4d58-d494-50cb-c1a9f44dd337",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "shader_replace_simple",
                    "help": "shader_replace_simple(shader, vertex_code, fragment_code)->error_text||\"\"",
                    "hidden": false,
                    "kind": 2,
                    "name": "shader_replace_simple",
                    "returnType": 2
                },
                {
                    "id": "2d2048c9-901d-c3df-07be-a7fd5696dd91",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "shader_replace_simple_auto",
                    "help": "shader_replace_simple_auto(shader, vertex_code, fragment_code)->success?; prints error",
                    "hidden": false,
                    "kind": 2,
                    "name": "shader_replace_simple_auto",
                    "returnType": 2
                }
            ],
            "init": "shader_replace_simple_init",
            "kind": 2,
            "order": [
                "a5d4c2ff-aefe-9a56-391a-622a63df4808",
                "b1c57580-3613-903a-e8eb-14d55a8b13ca",
                "261c0742-d34a-0708-7fc3-de8a7c27e730",
                "9c4f853e-4d58-d494-50cb-c1a9f44dd337",
                "2d2048c9-901d-c3df-07be-a7fd5696dd91"
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
    "productID": "",
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