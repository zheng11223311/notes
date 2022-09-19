.class public Lcom/tudou/adapter/RowPieceTableAdapter;
.super Landroid/widget/BaseAdapter;
.source "RowPieceTableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private dayInfo:Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;

.field private itemData:Lcom/youku/vo/ClassifyScheduleItems;

.field private itemInfo:Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;

.field private mActivity:Lcom/tudou/ui/activity/BaseActivity;

.field private mChannelName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private view:Landroid/view/View;

.field private viewHolder:Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tudou/ui/activity/BaseActivity;Lcom/youku/vo/ClassifyScheduleItems;Ljava/lang/String;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mActivity"    # Lcom/tudou/ui/activity/BaseActivity;
    .param p3, "itemData"    # Lcom/youku/vo/ClassifyScheduleItems;
    .param p4, "channelName"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    .line 47
    iput-object p3, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->itemData:Lcom/youku/vo/ClassifyScheduleItems;

    .line 48
    iput-object p4, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->mChannelName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private getCountNum()I
    .locals 5

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, "count":I
    iget-object v4, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->itemData:Lcom/youku/vo/ClassifyScheduleItems;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->itemData:Lcom/youku/vo/ClassifyScheduleItems;

    iget-object v4, v4, Lcom/youku/vo/ClassifyScheduleItems;->data:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 155
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->itemData:Lcom/youku/vo/ClassifyScheduleItems;

    iget-object v4, v4, Lcom/youku/vo/ClassifyScheduleItems;->data:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 157
    iget-object v4, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->itemData:Lcom/youku/vo/ClassifyScheduleItems;

    iget-object v4, v4, Lcom/youku/vo/ClassifyScheduleItems;->data:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;

    iget-object v4, v4, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->album:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 158
    .local v0, "albumSize":I
    if-eqz v0, :cond_1

    .line 160
    div-int/lit8 v3, v0, 0x3

    .line 162
    .local v3, "tempCount":I
    rem-int/lit8 v4, v0, 0x3

    if-eqz v4, :cond_0

    .line 163
    add-int/lit8 v3, v3, 0x1

    .line 165
    :cond_0
    add-int/2addr v1, v3

    .line 155
    .end local v3    # "tempCount":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    .end local v0    # "albumSize":I
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method private getShowItemList(I)Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;
    .locals 12
    .param p1, "position"    # I

    .prologue
    const/4 v11, 0x1

    .line 180
    const/4 v4, 0x0

    .line 182
    .local v4, "itemInfo":Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;
    const/4 v8, 0x0

    .line 183
    .local v8, "oldCount":I
    const/4 v7, 0x0

    .line 184
    .local v7, "nowCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v10, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->itemData:Lcom/youku/vo/ClassifyScheduleItems;

    iget-object v10, v10, Lcom/youku/vo/ClassifyScheduleItems;->data:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_7

    .line 185
    iget-object v10, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->itemData:Lcom/youku/vo/ClassifyScheduleItems;

    iget-object v10, v10, Lcom/youku/vo/ClassifyScheduleItems;->data:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;

    .line 186
    .local v1, "csdi":Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;
    iget-object v10, v1, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->album:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    div-int/lit8 v10, v10, 0x3

    add-int/2addr v7, v10

    .line 191
    iget-object v10, v1, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->album:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_0

    if-eqz v7, :cond_0

    if-ne v7, v8, :cond_0

    if-ne v7, p1, :cond_0

    .line 192
    iget-object v10, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->itemData:Lcom/youku/vo/ClassifyScheduleItems;

    invoke-virtual {v10, v11}, Lcom/youku/vo/ClassifyScheduleItems;->getClassifyScheduleDayItem(Z)Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;

    move-result-object v4

    .line 193
    iget-object v10, v1, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->week:Ljava/lang/String;

    iput-object v10, v4, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->week:Ljava/lang/String;

    .line 194
    iget-object v10, v1, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->weekday:Ljava/lang/String;

    iput-object v10, v4, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->weekday:Ljava/lang/String;

    move-object v5, v4

    .line 221
    .end local v1    # "csdi":Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;
    .end local v4    # "itemInfo":Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;
    .local v5, "itemInfo":Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;
    :goto_1
    return-object v5

    .line 199
    .end local v5    # "itemInfo":Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;
    .restart local v1    # "csdi":Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;
    .restart local v4    # "itemInfo":Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;
    :cond_0
    iget-object v10, v1, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->album:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v1, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->album:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    rem-int/lit8 v10, v10, 0x3

    if-eqz v10, :cond_2

    .line 200
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 202
    :cond_2
    if-le v7, p1, :cond_6

    .line 203
    iget-object v0, v1, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->album:Ljava/util/List;

    .line 204
    .local v0, "album":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;>;"
    sub-int v10, p1, v8

    mul-int/lit8 v9, v10, 0x3

    .line 205
    .local v9, "startIndex":I
    iget-object v10, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->itemData:Lcom/youku/vo/ClassifyScheduleItems;

    invoke-virtual {v10, v11}, Lcom/youku/vo/ClassifyScheduleItems;->getClassifyScheduleDayItem(Z)Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;

    move-result-object v4

    .line 206
    if-nez v9, :cond_3

    .line 207
    iget-object v10, v1, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->week:Ljava/lang/String;

    iput-object v10, v4, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->week:Ljava/lang/String;

    .line 208
    iget-object v10, v1, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->weekday:Ljava/lang/String;

    iput-object v10, v4, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->weekday:Ljava/lang/String;

    .line 210
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 211
    .local v2, "endIndex":I
    sub-int v10, v2, v9

    const/4 v11, 0x3

    if-le v10, v11, :cond_4

    .line 212
    add-int/lit8 v2, v9, 0x3

    .line 213
    :cond_4
    move v6, v9

    .local v6, "j":I
    :goto_2
    if-ge v6, v2, :cond_5

    .line 214
    iget-object v10, v4, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->album:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    move-object v5, v4

    .line 215
    .end local v4    # "itemInfo":Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;
    .restart local v5    # "itemInfo":Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;
    goto :goto_1

    .line 217
    .end local v0    # "album":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;>;"
    .end local v2    # "endIndex":I
    .end local v5    # "itemInfo":Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;
    .end local v6    # "j":I
    .end local v9    # "startIndex":I
    .restart local v4    # "itemInfo":Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;
    :cond_6
    move v8, v7

    .line 184
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .end local v1    # "csdi":Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;
    :cond_7
    move-object v5, v4

    .line 221
    .end local v4    # "itemInfo":Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;
    .restart local v5    # "itemInfo":Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;
    goto :goto_1
.end method

.method private setData(II)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "index"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->viewHolder:Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;

    iget-object v0, v0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->videoLayout:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->viewHolder:Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;

    iget-object v0, v0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->videoLayout:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->itemInfo:Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;

    iget-object v1, v1, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;->picurl_200_300:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->viewHolder:Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;

    iget-object v2, v2, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->videoIcon:[Landroid/widget/ImageView;

    aget-object v2, v2, p2

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 133
    iget-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->viewHolder:Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;

    iget-object v0, v0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->videoRests:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->itemInfo:Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;

    iget-object v2, v2, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;->channel_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->itemInfo:Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;

    iget-object v2, v2, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;->area_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->viewHolder:Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;

    iget-object v0, v0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->videoName:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->itemInfo:Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;

    iget-object v1, v1, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->viewHolder:Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;

    iget-object v0, v0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->videoIntro:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->itemInfo:Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;

    iget-object v1, v1, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;->update_episode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->viewHolder:Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;

    iget-object v0, v0, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->videoLayout:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, p2

    new-instance v1, Lcom/tudou/adapter/RowPieceTableAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/tudou/adapter/RowPieceTableAdapter$1;-><init>(Lcom/tudou/adapter/RowPieceTableAdapter;II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/tudou/adapter/RowPieceTableAdapter;->getCountNum()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 63
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 75
    if-nez p2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0301bf

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->view:Landroid/view/View;

    .line 77
    new-instance v2, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;

    iget-object v3, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->view:Landroid/view/View;

    invoke-direct {v2, p0, v3}, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/RowPieceTableAdapter;Landroid/view/View;)V

    iput-object v2, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->viewHolder:Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;

    .line 78
    iget-object v2, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->viewHolder:Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    :goto_0
    invoke-direct {p0, p1}, Lcom/tudou/adapter/RowPieceTableAdapter;->getShowItemList(I)Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;

    move-result-object v2

    iput-object v2, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->dayInfo:Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;

    .line 87
    iget-object v2, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->viewHolder:Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;

    iget-object v3, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->dayInfo:Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;

    iget-object v3, v3, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->week:Ljava/lang/String;

    iget-object v4, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->dayInfo:Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;

    iget-object v4, v4, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->weekday:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4}, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->setWeek(ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->dayInfo:Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;

    iget-object v2, v2, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->album:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 90
    .local v0, "albumSize":I
    if-eqz v0, :cond_2

    .line 91
    iget-object v2, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->viewHolder:Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;

    iget-object v2, v2, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->tvNoUpdata:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v2, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->viewHolder:Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;

    iget-object v2, v2, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->videoLin:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 96
    iget-object v2, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->dayInfo:Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;

    iget-object v2, v2, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->album:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;

    iput-object v2, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->itemInfo:Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;

    .line 98
    invoke-direct {p0, p1, v1}, Lcom/tudou/adapter/RowPieceTableAdapter;->setData(II)V

    .line 100
    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    .line 101
    packed-switch v1, :pswitch_data_0

    .line 94
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 80
    .end local v0    # "albumSize":I
    .end local v1    # "i":I
    :cond_1
    iput-object p2, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->view:Landroid/view/View;

    .line 81
    iget-object v2, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;

    iput-object v2, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->viewHolder:Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;

    goto :goto_0

    .line 103
    .restart local v0    # "albumSize":I
    .restart local v1    # "i":I
    :pswitch_0
    iget-object v2, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->viewHolder:Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;

    iget-object v2, v2, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->centreLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 104
    iget-object v2, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->viewHolder:Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;

    iget-object v2, v2, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 107
    :pswitch_1
    iget-object v2, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->viewHolder:Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;

    iget-object v2, v2, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->rightLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 113
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->viewHolder:Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;

    iget-object v2, v2, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->tvNoUpdata:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v2, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->viewHolder:Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;

    iget-object v2, v2, Lcom/tudou/adapter/RowPieceTableAdapter$ViewHolder;->videoLin:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    :cond_3
    iget-object v2, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->view:Landroid/view/View;

    return-object v2

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public goDetailActivity(II)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "index"    # I

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/tudou/adapter/RowPieceTableAdapter;->getShowItemList(I)Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;

    move-result-object v2

    .line 231
    .local v2, "itemInfo":Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;
    iget-object v3, v2, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem;->album:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;

    .line 233
    .local v1, "item":Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;
    iget-object v3, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;->album_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    iget-object v6, v1, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;->title:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    .line 236
    iget-object v3, v1, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;->album_id:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 238
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "type"

    iget-object v4, p0, Lcom/tudou/adapter/RowPieceTableAdapter;->mChannelName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "t1.cms_sicetable.videoclick.1_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/youku/vo/ClassifyScheduleItems$ClassifyScheduleDayItem$AblumItem;->album_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 241
    .end local v0    # "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
