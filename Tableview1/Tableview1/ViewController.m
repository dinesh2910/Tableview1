//
//  ViewController.m
//  Tableview1
//
//  Created by dinesh danda on 8/16/16.
//  Copyright © 2016 dinesh danda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, copy) NSArray *subjects;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _subjects =[NSArray arrayWithObjects:@"Maths",@"Hindi",
                @"English",
                @"Social",@"Digital Communications",
                @"Biomediacal",@"wireless",
                @"Numerical methods",@"java",
                @"Advanced Java",@"computer architecture",
                @"Readings in ECE",
                @"sensor design",
                @"power Security",nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.subjects count];
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
    
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *simpleidentifier = @"simpleidentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleidentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:simpleidentifier];
        
    }
    UIImage *image1 = [UIImage imageNamed:@"book image.jpeg"];
    cell.imageView.image= image1;
    if (indexPath.row <7) {
        cell.detailTextLabel.text=@"First 7";
    }
    else{
        cell.detailTextLabel.text = @"last 7";
        
    }
    cell.textLabel.text = self.subjects[indexPath.row];
    return cell;
    
}
@end
