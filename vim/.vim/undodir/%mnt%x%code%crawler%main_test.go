Vim�UnDo� �An�c$b9Ba���&�%Z|����,�);�                     9       9   9   9    `�.?    _�                             ����                                                                                                                                                                                                                                                                                                                                                             `�*�     �                 �              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `�*�     �                  package main5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `�*�     �                    $func Test_returnsErr(t *testing.T) {   	tests := []struct {   		name    string   		wantErr bool   	}{   		// TODO: Add test cases.   	}   	for _, tt := range tests {   %		t.Run(tt.name, func(t *testing.T) {   7			if err := returnsErr(); (err != nil) != tt.wantErr {   D				t.Errorf("returnsErr() error = %v, wantErr %v", err, tt.wantErr)   			}   		})   	}   }5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `�*�    �                  package main       import "testing"5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `�*�     �                  package main5�_�      	             
        ����                                                                                                                                                                                                                                                                                                                            
          
          V       `�+     �   
            		�   
          5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                            
          
          V       `�+     �               			�             5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                            
          
          V       `�+     �               			name: ""5�_�   
                        ����                                                                                                                                                                                                                                                                                                                            
          
          V       `�+     �               			name: ""<5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `�+     �               			�             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `�+     �               			args: args{}5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `�+     �               				�             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `�+!     �               			}5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `�+$     �   
             		{   			name: "",   			args: args{   				   			},   		}5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                V       `�+/     �   
            		�   
          5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `�+4     �               		}5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `�+5     �               			�             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `�+7     �               			name: ""5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `�+8     �               			�             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `�+=     �               			}5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                V       `�+?     �               			name: "",5�_�                          ����                                                                                                                                                                                                                                                                                                                                                V       `�+f     �   
             		{   			name: "q",   			args: args{   			},   		},5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                V       `�+n     �   
            		�   
          5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `�+o     �               		}5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `�+p     �               			�             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `�+r     �               			name: ""5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `�+s     �               			�             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       `�+u     �               			}5�_�      !                      ����                                                                                                                                                                                                                                                                                                                                                V       `�+v     �             5�_�       "           !          ����                                                                                                                                                                                                                                                                                                                                                V       `�+�     �             �               			}�               			�             �               			�             �               		}�               		�             5�_�   !   #           "          ����                                                                                                                                                                                                                                                                                                                                                V   	    `�+�     �                		{   			name: "",   			args: args{       			},   		},5�_�   "   $           #           ����                                                                                                                                                                                                                                                                                                                                                V   	    `�+�    �                  package main       import "testing"       $func Test_returnsErr(t *testing.T) {   	tests := []struct {   		name    string   		wantErr bool   	}{   		// TODO: Add test cases.   		{   			name: "",   			args: args{       			},   		},   	}   	for _, tt := range tests {   %		t.Run(tt.name, func(t *testing.T) {   7			if err := returnsErr(); (err != nil) != tt.wantErr {   D				t.Errorf("returnsErr() error = %v, wantErr %v", err, tt.wantErr)   			}   		})   	}   }5�_�   #   &           $          ����                                                                                                                                                                                                                                                                                                                                                             `�-�     �               			name: "",�               			�             �               				�             �             �               		�             5�_�   $   '   %       &           ����                                                                                                                                                                                                                                                                                                                                                  V       `�-�     �                		{   			name: "",   			args: args{       			},   		},5�_�   &   *           '           ����                                                                                                                                                                                                                                                                                                                                                  V       `�-�    �                  package main       import "testing"       $func Test_returnsErr(t *testing.T) {   	tests := []struct {   		name    string   		wantErr bool   	}{   		// TODO: Add test cases.   		{   			name: "",   			args: args{},   		},   	}   	for _, tt := range tests {   %		t.Run(tt.name, func(t *testing.T) {   7			if err := returnsErr(); (err != nil) != tt.wantErr {   D				t.Errorf("returnsErr() error = %v, wantErr %v", err, tt.wantErr)   			}   		})   	}   }5�_�   '   +   )       *          ����                                                                                                                                                                                                                                                                                                                                                           `�.     �               			name: "",�               			�             �               				�             �             �               		�             5�_�   *   -           +          ����                                                                                                                                                                                                                                                                                                                                                           `�.      �               7			if err := returnsErr(); (err != nil) != tt.wantErr {5�_�   +   .   ,       -          ����                                                                                                                                                                                                                                                                                                                                                           `�.#     �               6			f err := returnsErr(); (err != nil) != tt.wantErr {5�_�   -   /           .          ����                                                                                                                                                                                                                                                                                                                                                           `�.$     �               4			err := returnsErr(); (err != nil) != tt.wantErr {5�_�   .   0           /          ����                                                                                                                                                                                                                                                                                                                                                           `�.(     �                			�             5�_�   /   1           0          ����                                                                                                                                                                                                                                                                                                                                              V       `�.*     �                			if err != nil {   				log.Error().Err(err)   			}5�_�   0   2           1           ����                                                                                                                                                                                                                                                                                                                                              V       `�.,     �                 5�_�   1   3           2          ����                                                                                                                                                                                                                                                                                                                                              V       `�.1     �                			�             5�_�   2   4           3           ����                                                                                                                                                                                                                                                                                                                                              V       `�.7     �         #      			}�         "    5�_�   3   7           4          ����                                                                                                                                                                                                                                                                                                                                              V       `�.7     �                			if err != nil {   			}5�_�   4   8   5       7           ����                                                                                                                                                                                                                                                                                                                                              V       `�.=     �                				log.Error().Err(err)5�_�   7   9           8           ����                                                                                                                                                                                                                                                                                                                                              V       `�.=     �                 5�_�   8               9           ����                                                                                                                                                                                                                                                                                                                                              V       `�.>    �                  package main       import "testing"       $func Test_returnsErr(t *testing.T) {   	tests := []struct {   		name    string   		wantErr bool   	}{   		// TODO: Add test cases.   		{   			name: "",   			args: args{},   		},   		{   			name: "",   			args: args{       			},   		},   	}   	for _, tt := range tests {   %		t.Run(tt.name, func(t *testing.T) {   			err := returnsErr()   "			if (err != nil) != tt.wantErr {   D				t.Errorf("returnsErr() error = %v, wantErr %v", err, tt.wantErr)   			}   		})   	}   }5�_�   4   6       7   5           ����                                                                                                                                                                                                                                                                                                                                              V       `�.9     �                				log.Error().Err(err)�         !    5�_�   5               6           ����                                                                                                                                                                                                                                                                                                                                              V       `�.9     �                				log.Error().Err(err)�         !    5�_�   +           -   ,           ����                                                                                                                                                                                                                                                                                                                                                           `�.!     �               2 err := returnsErr(); (err != nil) != tt.wantErr {5�_�   '       (   *   )          ����                                                                                                                                                                                                                                                                                                                                                           `�.     �               		�               		{   			name: "",   			args: args{�                �               				�               			},�               			�               		},�               			name: "anwonawoef",5�_�   '           )   (          ����                                                                                                                                                                                                                                                                                                                                                           `�.     �               		�               		{   			name: "",   			args: args{�                �               				�               			},�               			�               		},�               			name: "",5�_�   $           &   %           ����                                                                                                                                                                                                                                                                                                                                                V       `�-�     �              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       `�+\     �                5�_�                   	        ����                                                                                                                                                                                                                                                                                                                                                             `�*�     �   	   
         		�   	            		{   		}5�_�                     
       ����                                                                                                                                                                                                                                                                                                                            
          
          V       `�*�     �   	           5��