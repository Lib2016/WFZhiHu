//
//  WFMainViewCell.m
//  WFZhihuDaily
//
//  Created by xiupintech on 16/1/5.
//  Copyright © 2016年 xiupintech. All rights reserved.
//

#import "WFMainViewCell.h"

@implementation WFMainViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // cell不可以选中
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self configUI];
        
    }
    return self;
}

- (void)configUI{
    
    _newsImageView = [[UIImageView alloc] initWithFrame:CGRectMake(kScreenWidth - 65.f - 12.f, (80.f - 50.f)/2, 65.f, 50.f)];
    _newsImageView.clipsToBounds = YES;
    _newsImageView.contentMode = UIViewContentModeScaleAspectFill;
    [self.contentView addSubview:_newsImageView];
    
    _newsTitleLbl = [[UILabel alloc] initWithFrame:CGRectMake(12.f, 6.f, kScreenWidth - 105.f, 60.f)];
    _newsTitleLbl.numberOfLines = 3;
    _newsTitleLbl.textColor = [UIColor blackColor];
    _newsTitleLbl.textAlignment = NSTextAlignmentLeft;
    _newsTitleLbl.font = [UIFont boldSystemFontOfSize:15];
    [self.contentView addSubview:_newsTitleLbl];
}

#pragma mark - Setter
- (void)setSingleNewsLayout:(WFSingelNewsLayout *)singleNewsLayout{
    
    WFSingelNewsModel *singleNewsModel = singleNewsLayout.singeModel;
    [_newsImageView wf_setImageWithUrlString:singleNewsModel.imagesUrl[0] placeholderImage:Image(@"tags_selected.png")];
    _newsTitleLbl.text = singleNewsModel.newsTitle;

}

@end
