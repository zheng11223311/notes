.class public Lcom/tudou/adapter/TheShowRankHistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "TheShowRankHistoryAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;",
            ">;"
        }
    .end annotation
.end field

.field private mFragment:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "dataSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/tudou/adapter/TheShowRankHistoryAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/tudou/adapter/TheShowRankHistoryAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/adapter/TheShowRankHistoryAdapter;)Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/TheShowRankHistoryAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tudou/adapter/TheShowRankHistoryAdapter;->mFragment:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/adapter/TheShowRankHistoryAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/TheShowRankHistoryAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tudou/adapter/TheShowRankHistoryAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private goTheShowRank(II)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "wno"    # I

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    const-string v1, "year"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    const-string v1, "wno"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/tudou/adapter/TheShowRankHistoryAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tudou/ui/activity/TheShowRankActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lcom/tudou/adapter/TheShowRankHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 136
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tudou/adapter/TheShowRankHistoryAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/tudou/adapter/TheShowRankHistoryAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 42
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/TheShowRankHistoryAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tudou/adapter/TheShowRankHistoryAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 53
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 60
    if-nez p2, :cond_2

    .line 61
    new-instance v2, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;

    iget-object v3, p0, Lcom/tudou/adapter/TheShowRankHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;-><init>(Landroid/content/Context;)V

    .line 67
    .local v2, "mTheShowRankHistoryItemLayout":Lcom/tudou/adapter/TheShowRankHistoryItemLayout;
    :goto_0
    iget-object v3, p0, Lcom/tudou/adapter/TheShowRankHistoryAdapter;->mDataSet:Ljava/util/ArrayList;

    mul-int/lit8 v4, p1, 0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;

    .line 69
    .local v0, "itemLeft":Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;
    iget-object v3, v0, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;->top1:Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult$Top1;

    iget-object v3, v3, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult$Top1;->xc_mv_picUrl:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 70
    iget-object v3, p0, Lcom/tudou/adapter/TheShowRankHistoryAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/tudou/ui/activity/TheShowRankHistoryActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/TheShowRankHistoryActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v4, v0, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;->top1:Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult$Top1;

    iget-object v4, v4, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult$Top1;->xc_mv_picUrl:Ljava/lang/String;

    iget-object v5, v2, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->mLeftPic:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 74
    :cond_0
    iget-object v3, v2, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->mLeftPic:Landroid/widget/ImageView;

    new-instance v4, Lcom/tudou/adapter/TheShowRankHistoryAdapter$1;

    invoke-direct {v4, p0, v0}, Lcom/tudou/adapter/TheShowRankHistoryAdapter$1;-><init>(Lcom/tudou/adapter/TheShowRankHistoryAdapter;Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v3, v2, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->mLeftPlayer:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;->top1:Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult$Top1;

    iget-object v4, v4, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult$Top1;->ArtistName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v3, v2, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->mLeftDescription:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;->top1:Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult$Top1;

    iget-object v4, v4, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult$Top1;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v3, v2, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->mLeftNum:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7b2c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;->wno:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u671f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    mul-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/tudou/adapter/TheShowRankHistoryAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 96
    iget-object v3, p0, Lcom/tudou/adapter/TheShowRankHistoryAdapter;->mDataSet:Ljava/util/ArrayList;

    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;

    .line 97
    .local v1, "itemRight":Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;
    iget-object v3, v2, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->mRight:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v3, v1, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;->top1:Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult$Top1;

    iget-object v3, v3, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult$Top1;->xc_mv_picUrl:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 100
    iget-object v3, p0, Lcom/tudou/adapter/TheShowRankHistoryAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/tudou/ui/activity/TheShowRankHistoryActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/TheShowRankHistoryActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v4, v1, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;->top1:Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult$Top1;

    iget-object v4, v4, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult$Top1;->xc_mv_picUrl:Ljava/lang/String;

    iget-object v5, v2, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->mRightPic:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 104
    :cond_1
    iget-object v3, v2, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->mRightPic:Landroid/widget/ImageView;

    new-instance v4, Lcom/tudou/adapter/TheShowRankHistoryAdapter$2;

    invoke-direct {v4, p0, v1}, Lcom/tudou/adapter/TheShowRankHistoryAdapter$2;-><init>(Lcom/tudou/adapter/TheShowRankHistoryAdapter;Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v3, v2, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->mRightPlayer:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;->top1:Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult$Top1;

    iget-object v4, v4, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult$Top1;->ArtistName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v3, v2, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->mRightDescription:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;->top1:Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult$Top1;

    iget-object v4, v4, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult$Top1;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v3, v2, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->mRightNum:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7b2c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;->wno:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u671f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .end local v1    # "itemRight":Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;
    :goto_1
    return-object v2

    .end local v0    # "itemLeft":Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;
    .end local v2    # "mTheShowRankHistoryItemLayout":Lcom/tudou/adapter/TheShowRankHistoryItemLayout;
    :cond_2
    move-object v2, p2

    .line 63
    check-cast v2, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;

    .restart local v2    # "mTheShowRankHistoryItemLayout":Lcom/tudou/adapter/TheShowRankHistoryItemLayout;
    goto/16 :goto_0

    .line 123
    .restart local v0    # "itemLeft":Lcom/youku/vo/TheShowRankHistoryResults$TheShowRankHistoryResult;
    :cond_3
    iget-object v3, v2, Lcom/tudou/adapter/TheShowRankHistoryItemLayout;->mRight:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setFragment(Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/tudou/adapter/TheShowRankHistoryAdapter;->mFragment:Lcom/tudou/ui/fragment/TheShowHistoryRankFragment;

    .line 35
    return-void
.end method
