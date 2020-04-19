{
    "id": "ae417c7e-501f-491e-84c8-44eb3d6898f9",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "window_set_cursor",
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
    "date": "2019-50-27 12:09:51",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "5d33d469-27ba-4eba-85ae-8200aed73044",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 105553658380352,
            "filename": "window_set_cursor.dll",
            "final": "",
            "functions": [
                {
                    "id": "953819a8-c60e-4df4-b6f3-8abf8f402ff3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "window_set_cursor_init_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_set_cursor_init_raw",
                    "returnType": 2
                },
                {
                    "id": "c0d002c1-4234-4119-a09b-8420132857a9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "window_set_cursor_normal_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_set_cursor_normal_raw",
                    "returnType": 2
                },
                {
                    "id": "73068c03-d113-4542-8fc3-b1619f88d02a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "window_set_cursor_cleanup",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_set_cursor_cleanup",
                    "returnType": 2
                },
                {
                    "id": "ff9d0eb9-84f7-4b0e-8500-46bbffb2be41",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "window_set_cursor_path_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_set_cursor_path_raw",
                    "returnType": 2
                },
                {
                    "id": "b224b670-b313-43ac-afd4-66368d3ab8f9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "window_set_cursor_buffer_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_set_cursor_buffer_raw",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\window_set_cursor.dll",
            "uncompress": false
        },
        {
            "id": "ff8d4e3e-8479-4843-adfe-e9910831e817",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 113497714299118,
            "filename": "window_set_cursor.gml",
            "final": "",
            "functions": [
                {
                    "id": "d77dbeb3-4571-47e0-afbf-0380e6f87cbd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "window_set_cursor_init",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_set_cursor_init",
                    "returnType": 2
                },
                {
                    "id": "1ba785ee-4420-443d-990b-cfc1ae05e470",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "window_set_cursor_normal",
                    "help": "window_set_cursor_normal() : Reverts the cursor to whatever set via built-in window_set_cursor.",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_set_cursor_normal",
                    "returnType": 2
                },
                {
                    "id": "46a2353d-3b16-44c6-b4ae-2bf1b6eb7bd2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 7,
                    "args": [
                        2,
                        2,
                        2,
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "window_set_cursor_surface_part",
                    "help": "window_set_cursor_surface_part(surface, left, top, width, height, x, y)",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_set_cursor_surface_part",
                    "returnType": 2
                },
                {
                    "id": "80de2888-baa7-4cbc-ac57-224ce83e2420",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "window_set_cursor_surface",
                    "help": "window_set_cursor_surface(surface, x, y)",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_set_cursor_surface",
                    "returnType": 2
                },
                {
                    "id": "65a324a4-57db-4406-8866-c7a873b0b8f9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "window_set_cursor_sprite",
                    "help": "window_set_cursor_sprite(sprite, subimg)",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_set_cursor_sprite",
                    "returnType": 2
                },
                {
                    "id": "df59ff63-3a2f-4412-81d9-3d0fa7378de2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 6,
                    "args": [
                        2,
                        2,
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "window_set_cursor_sprite_ext",
                    "help": "window_set_cursor_sprite_ext(sprite, subimg, image_xscale, image_yscale, image_blend, image_alpha)",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_set_cursor_sprite_ext",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\gml.gml",
            "uncompress": false
        },
        {
            "id": "4d0f4257-38c2-4b6a-a683-6f238abb81c4",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 542113856,
            "filename": "window_set_cursor_dll.gml",
            "final": "",
            "functions": [
                {
                    "id": "76e84a6f-1dca-4e52-b58f-c7acd006810f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "window_set_cursor_init_dll",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_set_cursor_init_dll",
                    "returnType": 2
                },
                {
                    "id": "189b0fb0-16dc-49b8-b9ea-306be63173d7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 6,
                    "args": [
                        2,
                        2,
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "window_set_cursor_impl_1",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_set_cursor_impl_1",
                    "returnType": 2
                },
                {
                    "id": "da98d8a2-1d67-40e5-bb73-d5f5cbb9b44a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 9,
                    "args": [
                        2,
                        2,
                        2,
                        2,
                        2,
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "window_set_cursor_impl",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_set_cursor_impl",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\gml.gml",
            "uncompress": false
        },
        {
            "id": "a4ae92a8-8ac4-4461-9f79-f543d88bf626",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "window_set_cursor.js",
            "final": "",
            "functions": [
                {
                    "id": "8186cf01-1f3d-4687-b0d3-68e774c10a8e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 6,
                    "args": [
                        2,
                        2,
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "window_set_cursor_impl_1",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_set_cursor_impl_1",
                    "returnType": 2
                },
                {
                    "id": "0b9f3911-906b-4d15-ad4f-433993119bbc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 9,
                    "args": [
                        2,
                        2,
                        2,
                        2,
                        2,
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "window_set_cursor_impl",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_set_cursor_impl",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 5,
            "order": [
                
            ],
            "origname": "extensions\\js.js",
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
    "productID": "ACBD3CFF4E539AD869A0E8E3B4B022DD",
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