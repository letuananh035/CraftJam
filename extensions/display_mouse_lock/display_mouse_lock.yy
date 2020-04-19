{
    "id": "46ceacfd-9198-47cd-b1c8-4b21a13f2fa3",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "display_mouse_lock",
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
    "date": "2019-24-27 12:09:09",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "a9ad3f6d-9f7c-4077-90c6-d451a29d41d3",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "display_mouse_lock.dll",
            "final": "",
            "functions": [
                {
                    "id": "4109843c-b011-4997-83e9-4f84a55abeb4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "display_mouse_lock",
                    "help": "display_mouse_lock(x, y, w, h) : Locks the cursor to the given rectangular area on screen.",
                    "hidden": false,
                    "kind": 11,
                    "name": "display_mouse_lock",
                    "returnType": 2
                },
                {
                    "id": "0903c7fe-bc76-4149-bb26-677bfdc55010",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "display_mouse_unlock",
                    "help": "display_mouse_unlock() : Unlocks the cursor.",
                    "hidden": false,
                    "kind": 11,
                    "name": "display_mouse_unlock",
                    "returnType": 2
                },
                {
                    "id": "77d9b164-5044-475b-a0d6-d04af2c6f598",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "display_mouse_bounds_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "display_mouse_bounds_raw",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\display_mouse_lock.dll",
            "uncompress": false
        },
        {
            "id": "04361f81-fbdc-45f6-9791-f99cdf179c06",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "display_mouse_lock.gml",
            "final": "",
            "functions": [
                {
                    "id": "f9bc701e-af7f-4769-b5f4-1b7401b8dbe2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "display_mouse_bounds",
                    "help": "display_mouse_bounds() : Returns the current mouse' lock bounds (if any).",
                    "hidden": false,
                    "kind": 11,
                    "name": "display_mouse_bounds",
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
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "",
    "productID": "F79C97955FD1AF4686EB4EF4EF90F0DB",
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