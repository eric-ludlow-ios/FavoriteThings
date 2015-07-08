//
//  FavoriteThingsListTableViewDataSource.m
//  FavoriteThings-Objc
//
//  Created by Rutan on 7/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "FavoriteThingsListTableViewDataSource.h"

static NSString *cellID = @"cellID";

@implementation FavoriteThingsListTableViewDataSource

//create an array using a method
- (NSArray *)favoriteThingsListArray {
    
    return @[@"Raindrops on roses",
             @"Whiskers on kittens",
             @"Bright copper kettles",
             @"Warm woolen mittens",
             @"Brown paper packages tied up with strings",
             @"Cream colored ponies",
             @"Crisp apple strudels",
             @"Door bells",
             @"Sleigh bells",
             @"Schnitzel with noodles",
             @"Wild geese that fly with the moon on their wings",
             @"Girls in white dresses with blue satin sashes",
             @"Snowflakes that stay on my nose and eyelashes",
             @"Silver white winters that melt into Spring"];
}

//create a method (that calls a register class method) to register cell classes for cell reuse???; pass in a tableview as an argument
//don't forget to set this method in the header so we can call it in our view controller

- (void)registerTableView:(UITableView *)tableView {
    
    //link the type of cell I want to use with an Identifier???
    
    [tableView registerClass:[UITableViewCell class]  //note: you are passing in the class by calling the object's 'class' method
      forCellReuseIdentifier:cellID];
}

//write the methods required to comply with the datasource protocol

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    //get the array by calling the method; access its count property to return the number of rows
    
    return [self favoriteThingsListArray].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //call the dequeue instance method on the tableView being passed in to return cells
    //note: the cellID is used in multiple methods, so we get it from a static variable; index path is just passed in
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    
    //put the content of the array into the cell's textLabel text property using the row of the passed in indexPath
    
    cell.textLabel.text = [self favoriteThingsListArray][indexPath.row];
    
    return cell;
}













@end
