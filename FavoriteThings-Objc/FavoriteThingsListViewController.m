//
//  FavoriteThingsListViewController.m
//  FavoriteThings-Objc
//
//  Created by Rutan on 7/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "FavoriteThingsListViewController.h"
//import the data source header
#import "FavoriteThingsListTableViewDataSource.h"

@interface FavoriteThingsListViewController ()

@property (strong, nonatomic)UITableView *tableView;

//set an instance of the Data Source object as a property

@property (strong, nonatomic)FavoriteThingsListTableViewDataSource *favoriteThingsDataSource;

@end

@implementation FavoriteThingsListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds
                                                  style:UITableViewStylePlain];
    self.tableView.backgroundColor = [UIColor cyanColor];
    
    //instantiate an instance of the datasource
    self.favoriteThingsDataSource = [FavoriteThingsListTableViewDataSource new];
    
    //send the message to the instance of the datasource object and call the method to register the tableview
    [self.favoriteThingsDataSource registerTableView:self.tableView];
    
    //set the favoriteThingsDataSource as the dataSource for the tableView
    self.tableView.dataSource = self.favoriteThingsDataSource;
    
    self.title = @"A Few Of My Favorite Things";
    
    [self.view addSubview:self.tableView];
}

#pragma mark - Memory Warning

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
