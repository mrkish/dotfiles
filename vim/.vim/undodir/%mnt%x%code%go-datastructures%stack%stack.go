Vim�UnDo� f�������	h�q��Ϝ�D)\�_���#�   "   	                               _�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             _�     �                �             5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                             _�     �               
func New()5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _�     �               func New(values ...interface{})5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _�     �                 �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _�     �                 l := linkedlist.New()5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _�     �                 l := linkedlist.New(values)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _�    �                  package stack       import (   		"errors"   	"go-datastructures/linkedlist"   	"go-datastructures/model"   )       %// Stack :: struct :: FIFO collection   type Stack struct {   "	List *linkedlist.SinglyLinkedList   }       (func New(values ...interface{}) *Stack {      l := linkedlist.New(values...)   }       7// Pop :: func :: returns the first value in the Stack,   6// and removes that value from the embedded LinkedList   -func (s *Stack) Pop() (model.Object, error) {   	if s.List.Head != nil {   		val := s.List.Head.Value    		return val, s.List.Remove(val)   	}   5	return model.Object{}, errors.New("stack is empty!")   }       =// Add :: func :: Adds a value to the Stack in first position   'func (s *Stack) Add(obj model.Object) {   	s.List.Add(obj)   }5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _�    �         "      	  �         !    �                	�             5��