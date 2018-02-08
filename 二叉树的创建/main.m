//
//  main.m
//  二叉树的创建
//
//  Created by lixiaoqiang on 2018/2/8.
//  Copyright © 2018年 lixiaoqiang. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef int  DataType;
typedef struct tree
{
    DataType data;
    struct tree *left;
    struct tree *right;
}node,*pnode;
pnode createTreeNode(DataType data){
    pnode n = (pnode)malloc(sizeof(node));
    n ->data = data;
    n ->left = NULL;
    n ->right = NULL;
    return n;
}

//中序遍历
void treeTravel(pnode p){
    if (NULL == p) {
        return;
    }
    treeTravel(p->left);
    printf("%d  ",p->data);
    treeTravel(p->right);
}
/*
 
 
 7 1 5 6 2 9 4 8 6
 
 7
 
 1         9
 5   8
 3   6
 2   4

 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        pnode root = NULL;
        pnode p1=NULL, p2=NULL, p3=NULL, p4=NULL, p5=NULL, p6=NULL, p7=NULL,p8=NULL,p9=NULL;
        
        p1 = createTreeNode(7);
        p2 = createTreeNode(1);
        p3 = createTreeNode(9);
        p4 = createTreeNode(5);
        p5 = createTreeNode(8);
        p6 = createTreeNode(3);
        p7 = createTreeNode(6);
        p8 = createTreeNode(2);
        p9 = createTreeNode(4);
        
        p1->left = p2;
        p1->right = p3;
        
        p2->right = p4;
        
        p3->left = p5;
        
        p4->left = p6;
        p4->right = p7;
        
        p6->left = p8;
        p6->right = p9;
        
        root = p1;
        treeTravel(root);
    
    }
    return 0;
}
