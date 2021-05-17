Vim�UnDo� Lb�BG7��57���Ip��x5��Y�qO   _                                  `D�    _�                     ,       ����                                                                                                                                                                                        =                                                                                                                                                                   `D�     �   +   -   _      5				c: mockClient{filePath: "testdata/example.html"},5�_�                     ,       ����                                                                                                                                                                                        =                                                                                                                                                                   `D�    �               _   package parse       import (   	"bytes"   	"io"   	"io/ioutil"   	"net/http"   
	"testing"       	"golang.org/x/net/html"   )       type mockClient struct {   	res      *http.Response   	filePath string   	err      error   }       =func (m mockClient) Get(url string) (*http.Response, error) {   	if m.filePath != "" {   %		b, _ := ioutil.ReadFile(m.filePath)   		out := &http.Response{   *			Body: io.NopCloser(bytes.NewBuffer(b)),   		}   		return out, m.err   	}   	return m.res, m.err   }       func TestParse(t *testing.T) {   	type args struct {   		c   client   		url string   	}   	tests := []struct {   		name      string   		args      args   		wantErr   bool   		wantError error   	}{   		{   '			name: "no body returned, nil error",   			args: args{   				c: mockClient{},   			},   			wantErr:   true,   			wantError: errNilResp,   		},   		{   			name: "basic walking",   			args: args{   				c: mockClient{   0					res: mockResponse("testdata/example.html"),   				},   			},   		},   	}   	for _, tt := range tests {   %		t.Run(tt.name, func(t *testing.T) {   H			if err := Parse(tt.args.c, tt.args.url); (err != nil) != tt.wantErr {   ?				t.Errorf("Parse() error = %v, wantErr %v", err, tt.wantErr)   			}   		})   	}   }       func Test_walk(t *testing.T) {   	type args struct {   		n *html.Node   	}   	tests := []struct {   		name    string   		args    args   		wantErr bool   	}{   		// TODO: Add test cases.   	}   	for _, tt := range tests {   %		t.Run(tt.name, func(t *testing.T) {   :			if err := walk(tt.args.n); (err != nil) != tt.wantErr {   >				t.Errorf("walk() error = %v, wantErr %v", err, tt.wantErr)   			}   		})   	}   }       /func mockResponse(path string) *http.Response {    	b, err := ioutil.ReadFile(path)   	if err != nil {   		return nil   	}   	return &http.Response{   -		Body: ioutil.NopCloser(bytes.NewBuffer(b)),   	}   }5��