.class public Lcom/tudou/adapter/ClassifyHomeAdapter;
.super Landroid/widget/BaseAdapter;
.source "ClassifyHomeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final CLICK:I = 0x0

.field private static final LONG_CLICK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ClassifyHomeAdapter"


# instance fields
.field public isEdit:Z

.field private mContext:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private mPrimaryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelListInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Landroid/os/Handler;)V
    .locals 1
    .param p1, "mContext"    # Landroid/app/Activity;
    .param p3, "mHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelListInfo;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, "mPrimaryList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelListInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->isEdit:Z

    .line 46
    iput-object p1, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->mContext:Landroid/app/Activity;

    .line 47
    iput-object p2, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->mPrimaryList:Ljava/util/List;

    .line 48
    iput-object p3, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->mHandler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/adapter/ClassifyHomeAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/ClassifyHomeAdapter;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/adapter/ClassifyHomeAdapter;IILcom/youku/vo/ChannelListInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/ClassifyHomeAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/youku/vo/ChannelListInfo;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/tudou/adapter/ClassifyHomeAdapter;->itemClick(IILcom/youku/vo/ChannelListInfo;)Z

    move-result v0

    return v0
.end method

.method private clickSkip(Lcom/youku/vo/ChannelListInfo;)V
    .locals 3
    .param p1, "mChannelListInfo"    # Lcom/youku/vo/ChannelListInfo;

    .prologue
    .line 417
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 418
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/youku/vo/ChannelListInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    if-eqz v1, :cond_0

    .line 424
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 425
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "ct"

    iget-object v2, p1, Lcom/youku/vo/ChannelListInfo;->channel_title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string v1, "t1.home_category.categoryclick"

    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 428
    iget-object v1, p1, Lcom/youku/vo/ChannelListInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v2, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 429
    iget-object v1, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private itemClick(Lcom/youku/vo/ChannelListInfo;)V
    .locals 2
    .param p1, "mChannelListInfo"    # Lcom/youku/vo/ChannelListInfo;

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->isEdit:Z

    if-eqz v0, :cond_2

    .line 392
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/youku/vo/ChannelListInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/youku/vo/ChannelListInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v0, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/youku/vo/ChannelListInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v0, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    const-string v1, "cid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    :cond_0
    const-string v0, "\u8be5\u5206\u7c7b\u65e0\u6cd5\u6dfb\u52a0\u81f3\u684c\u9762"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 400
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-direct {p0, p1}, Lcom/tudou/adapter/ClassifyHomeAdapter;->setState(Lcom/youku/vo/ChannelListInfo;)V

    goto :goto_0

    .line 398
    :cond_2
    invoke-direct {p0, p1}, Lcom/tudou/adapter/ClassifyHomeAdapter;->clickSkip(Lcom/youku/vo/ChannelListInfo;)V

    goto :goto_0
.end method

.method private itemClick(IILcom/youku/vo/ChannelListInfo;)Z
    .locals 3
    .param p1, "isVisibility"    # I
    .param p2, "clickType"    # I
    .param p3, "mChannelListInfo"    # Lcom/youku/vo/ChannelListInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 373
    const/16 v2, 0x8

    if-ne p1, v2, :cond_0

    .line 387
    :goto_0
    return v0

    .line 376
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 378
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/tudou/adapter/ClassifyHomeAdapter;->itemClick(Lcom/youku/vo/ChannelListInfo;)V

    goto :goto_0

    .line 381
    :pswitch_1
    iget-boolean v2, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->isEdit:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 382
    goto :goto_0

    .line 383
    :cond_1
    iput-boolean v1, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->isEdit:Z

    .line 384
    invoke-direct {p0, p3}, Lcom/tudou/adapter/ClassifyHomeAdapter;->setState(Lcom/youku/vo/ChannelListInfo;)V

    goto :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sendEditStateHandler()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->mHandler:Landroid/os/Handler;

    const v1, 0x186aa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private setBackgroundState(Ljava/lang/Boolean;Landroid/view/View;)V
    .locals 1
    .param p1, "isAdd"    # Ljava/lang/Boolean;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->isEdit:Z

    if-eqz v0, :cond_1

    .line 363
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    const v0, 0x7f0200f7

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 370
    :goto_0
    return-void

    .line 366
    :cond_0
    const v0, 0x7f0200f6

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 368
    :cond_1
    const v0, 0x7f020622

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setState(Lcom/youku/vo/ChannelListInfo;)V
    .locals 2
    .param p1, "mChannelListInfo"    # Lcom/youku/vo/ChannelListInfo;

    .prologue
    .line 410
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/youku/vo/ChannelListInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/youku/vo/ChannelListInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v0, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/youku/vo/ChannelListInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v0, v0, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    const-string v1, "cid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-boolean v0, p1, Lcom/youku/vo/ChannelListInfo;->isAdd:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p1, Lcom/youku/vo/ChannelListInfo;->isAdd:Z

    .line 412
    :cond_0
    invoke-direct {p0}, Lcom/tudou/adapter/ClassifyHomeAdapter;->sendEditStateHandler()V

    .line 413
    invoke-virtual {p0}, Lcom/tudou/adapter/ClassifyHomeAdapter;->notifyDataSetChanged()V

    .line 414
    return-void

    .line 411
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "count":I
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->mPrimaryList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->mPrimaryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 55
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->mPrimaryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v1, v2, 0x4

    .line 56
    .local v1, "tempCount":I
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->mPrimaryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 58
    :cond_0
    add-int/2addr v0, v1

    .line 60
    .end local v1    # "tempCount":I
    :cond_1
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 70
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 76
    if-nez p2, :cond_0

    .line 77
    iget-object v7, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0301a2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 78
    new-instance v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;

    invoke-direct {v3, p0, p2}, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/ClassifyHomeAdapter;Landroid/view/View;)V

    .line 79
    .local v3, "mViewHolder":Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    :goto_0
    if-nez p1, :cond_1

    .line 85
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mEmptyView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :goto_1
    mul-int/lit8 v4, p1, 0x4

    .line 90
    .local v4, "oneIndex":I
    add-int/lit8 v6, v4, 0x1

    .line 91
    .local v6, "twoIndex":I
    add-int/lit8 v5, v6, 0x1

    .line 92
    .local v5, "threeIndex":I
    add-int/lit8 v1, v5, 0x1

    .line 94
    .local v1, "fourIndex":I
    iget-object v7, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->mPrimaryList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .line 96
    .local v0, "count":I
    if-eq v0, v4, :cond_3

    .line 97
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearOne:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 99
    iget-object v7, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->mPrimaryList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelListInfo;

    .line 101
    .local v2, "mChannelListInfo":Lcom/youku/vo/ChannelListInfo;
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mNameOne:Landroid/widget/TextView;

    iget-object v8, v2, Lcom/youku/vo/ChannelListInfo;->channel_title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v7, v2, Lcom/youku/vo/ChannelListInfo;->normal_icon:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 104
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconOne:Landroid/widget/ImageView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 105
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconOne:Landroid/widget/ImageView;

    const v8, 0x7f0200e7

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 106
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconOne:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020622

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    :goto_2
    iget-boolean v7, v2, Lcom/youku/vo/ChannelListInfo;->isAdd:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeOne:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v7, v8}, Lcom/tudou/adapter/ClassifyHomeAdapter;->setBackgroundState(Ljava/lang/Boolean;Landroid/view/View;)V

    .line 140
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeOne:Landroid/widget/RelativeLayout;

    new-instance v8, Lcom/tudou/adapter/ClassifyHomeAdapter$2;

    invoke-direct {v8, p0, v3, v2}, Lcom/tudou/adapter/ClassifyHomeAdapter$2;-><init>(Lcom/tudou/adapter/ClassifyHomeAdapter;Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;Lcom/youku/vo/ChannelListInfo;)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 147
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeOne:Landroid/widget/RelativeLayout;

    new-instance v8, Lcom/tudou/adapter/ClassifyHomeAdapter$3;

    invoke-direct {v8, p0, v3, v2}, Lcom/tudou/adapter/ClassifyHomeAdapter$3;-><init>(Lcom/tudou/adapter/ClassifyHomeAdapter;Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;Lcom/youku/vo/ChannelListInfo;)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    if-eq v0, v6, :cond_5

    .line 167
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearTwo:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    iget-object v7, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->mPrimaryList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mChannelListInfo":Lcom/youku/vo/ChannelListInfo;
    check-cast v2, Lcom/youku/vo/ChannelListInfo;

    .line 171
    .restart local v2    # "mChannelListInfo":Lcom/youku/vo/ChannelListInfo;
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mNameTwo:Landroid/widget/TextView;

    iget-object v8, v2, Lcom/youku/vo/ChannelListInfo;->channel_title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v7, v2, Lcom/youku/vo/ChannelListInfo;->normal_icon:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 174
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconTwo:Landroid/widget/ImageView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 175
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconTwo:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconTwo:Landroid/widget/ImageView;

    const v8, 0x7f0200e7

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 207
    :goto_3
    iget-boolean v7, v2, Lcom/youku/vo/ChannelListInfo;->isAdd:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeTwo:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v7, v8}, Lcom/tudou/adapter/ClassifyHomeAdapter;->setBackgroundState(Ljava/lang/Boolean;Landroid/view/View;)V

    .line 209
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeTwo:Landroid/widget/RelativeLayout;

    new-instance v8, Lcom/tudou/adapter/ClassifyHomeAdapter$5;

    invoke-direct {v8, p0, v3, v2}, Lcom/tudou/adapter/ClassifyHomeAdapter$5;-><init>(Lcom/tudou/adapter/ClassifyHomeAdapter;Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;Lcom/youku/vo/ChannelListInfo;)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 216
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeTwo:Landroid/widget/RelativeLayout;

    new-instance v8, Lcom/tudou/adapter/ClassifyHomeAdapter$6;

    invoke-direct {v8, p0, v3, v2}, Lcom/tudou/adapter/ClassifyHomeAdapter$6;-><init>(Lcom/tudou/adapter/ClassifyHomeAdapter;Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;Lcom/youku/vo/ChannelListInfo;)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    if-eq v0, v5, :cond_7

    .line 233
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearThree:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    iget-object v7, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->mPrimaryList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mChannelListInfo":Lcom/youku/vo/ChannelListInfo;
    check-cast v2, Lcom/youku/vo/ChannelListInfo;

    .line 237
    .restart local v2    # "mChannelListInfo":Lcom/youku/vo/ChannelListInfo;
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mNameThree:Landroid/widget/TextView;

    iget-object v8, v2, Lcom/youku/vo/ChannelListInfo;->channel_title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v7, v2, Lcom/youku/vo/ChannelListInfo;->normal_icon:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 240
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconThree:Landroid/widget/ImageView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 241
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconThree:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconThree:Landroid/widget/ImageView;

    const v8, 0x7f0200e7

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 273
    :goto_4
    iget-boolean v7, v2, Lcom/youku/vo/ChannelListInfo;->isAdd:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeThree:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v7, v8}, Lcom/tudou/adapter/ClassifyHomeAdapter;->setBackgroundState(Ljava/lang/Boolean;Landroid/view/View;)V

    .line 275
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeThree:Landroid/widget/RelativeLayout;

    new-instance v8, Lcom/tudou/adapter/ClassifyHomeAdapter$8;

    invoke-direct {v8, p0, v3, v2}, Lcom/tudou/adapter/ClassifyHomeAdapter$8;-><init>(Lcom/tudou/adapter/ClassifyHomeAdapter;Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;Lcom/youku/vo/ChannelListInfo;)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 282
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeThree:Landroid/widget/RelativeLayout;

    new-instance v8, Lcom/tudou/adapter/ClassifyHomeAdapter$9;

    invoke-direct {v8, p0, v3, v2}, Lcom/tudou/adapter/ClassifyHomeAdapter$9;-><init>(Lcom/tudou/adapter/ClassifyHomeAdapter;Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;Lcom/youku/vo/ChannelListInfo;)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    if-eq v0, v1, :cond_9

    .line 296
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearFour:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 298
    iget-object v7, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->mPrimaryList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mChannelListInfo":Lcom/youku/vo/ChannelListInfo;
    check-cast v2, Lcom/youku/vo/ChannelListInfo;

    .line 300
    .restart local v2    # "mChannelListInfo":Lcom/youku/vo/ChannelListInfo;
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mNameFour:Landroid/widget/TextView;

    iget-object v8, v2, Lcom/youku/vo/ChannelListInfo;->channel_title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v7, v2, Lcom/youku/vo/ChannelListInfo;->normal_icon:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 303
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconFour:Landroid/widget/ImageView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 304
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconFour:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconFour:Landroid/widget/ImageView;

    const v8, 0x7f0200e7

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 336
    :goto_5
    iget-boolean v7, v2, Lcom/youku/vo/ChannelListInfo;->isAdd:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeFour:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v7, v8}, Lcom/tudou/adapter/ClassifyHomeAdapter;->setBackgroundState(Ljava/lang/Boolean;Landroid/view/View;)V

    .line 338
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeFour:Landroid/widget/RelativeLayout;

    new-instance v8, Lcom/tudou/adapter/ClassifyHomeAdapter$11;

    invoke-direct {v8, p0, v3, v2}, Lcom/tudou/adapter/ClassifyHomeAdapter$11;-><init>(Lcom/tudou/adapter/ClassifyHomeAdapter;Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;Lcom/youku/vo/ChannelListInfo;)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 345
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeFour:Landroid/widget/RelativeLayout;

    new-instance v8, Lcom/tudou/adapter/ClassifyHomeAdapter$12;

    invoke-direct {v8, p0, v3, v2}, Lcom/tudou/adapter/ClassifyHomeAdapter$12;-><init>(Lcom/tudou/adapter/ClassifyHomeAdapter;Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;Lcom/youku/vo/ChannelListInfo;)V

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    .end local v2    # "mChannelListInfo":Lcom/youku/vo/ChannelListInfo;
    :goto_6
    return-object p2

    .line 81
    .end local v0    # "count":I
    .end local v1    # "fourIndex":I
    .end local v3    # "mViewHolder":Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;
    .end local v4    # "oneIndex":I
    .end local v5    # "threeIndex":I
    .end local v6    # "twoIndex":I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;

    .restart local v3    # "mViewHolder":Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;
    goto/16 :goto_0

    .line 87
    :cond_1
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mEmptyView:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 108
    .restart local v0    # "count":I
    .restart local v1    # "fourIndex":I
    .restart local v2    # "mChannelListInfo":Lcom/youku/vo/ChannelListInfo;
    .restart local v4    # "oneIndex":I
    .restart local v5    # "threeIndex":I
    .restart local v6    # "twoIndex":I
    :cond_2
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconOne:Landroid/widget/ImageView;

    iget-object v8, v2, Lcom/youku/vo/ChannelListInfo;->normal_icon:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 109
    iget-object v7, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->mContext:Landroid/app/Activity;

    check-cast v7, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v7}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    iget-object v8, v2, Lcom/youku/vo/ChannelListInfo;->normal_icon:Ljava/lang/String;

    iget-object v9, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconOne:Landroid/widget/ImageView;

    new-instance v10, Lcom/tudou/adapter/ClassifyHomeAdapter$1;

    invoke-direct {v10, p0, v3, v2}, Lcom/tudou/adapter/ClassifyHomeAdapter$1;-><init>(Lcom/tudou/adapter/ClassifyHomeAdapter;Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;Lcom/youku/vo/ChannelListInfo;)V

    invoke-virtual {v7, v8, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    goto/16 :goto_2

    .line 155
    .end local v2    # "mChannelListInfo":Lcom/youku/vo/ChannelListInfo;
    :cond_3
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearOne:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearTwo:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearThree:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearFour:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 159
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeOne:Landroid/widget/RelativeLayout;

    const v8, 0x7f020622

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 160
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeTwo:Landroid/widget/RelativeLayout;

    const v8, 0x7f020622

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 161
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeThree:Landroid/widget/RelativeLayout;

    const v8, 0x7f020622

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 162
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeFour:Landroid/widget/RelativeLayout;

    const v8, 0x7f020622

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_6

    .line 178
    .restart local v2    # "mChannelListInfo":Lcom/youku/vo/ChannelListInfo;
    :cond_4
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconTwo:Landroid/widget/ImageView;

    iget-object v8, v2, Lcom/youku/vo/ChannelListInfo;->normal_icon:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 179
    iget-object v7, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->mContext:Landroid/app/Activity;

    check-cast v7, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v7}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    iget-object v8, v2, Lcom/youku/vo/ChannelListInfo;->normal_icon:Ljava/lang/String;

    iget-object v9, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconTwo:Landroid/widget/ImageView;

    new-instance v10, Lcom/tudou/adapter/ClassifyHomeAdapter$4;

    invoke-direct {v10, p0, v3, v2}, Lcom/tudou/adapter/ClassifyHomeAdapter$4;-><init>(Lcom/tudou/adapter/ClassifyHomeAdapter;Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;Lcom/youku/vo/ChannelListInfo;)V

    invoke-virtual {v7, v8, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    goto/16 :goto_3

    .line 223
    :cond_5
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearTwo:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 224
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearThree:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 225
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearFour:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 226
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeTwo:Landroid/widget/RelativeLayout;

    const v8, 0x7f020622

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 227
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeThree:Landroid/widget/RelativeLayout;

    const v8, 0x7f020622

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 228
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeFour:Landroid/widget/RelativeLayout;

    const v8, 0x7f020622

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 244
    :cond_6
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconThree:Landroid/widget/ImageView;

    iget-object v8, v2, Lcom/youku/vo/ChannelListInfo;->normal_icon:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 245
    iget-object v7, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->mContext:Landroid/app/Activity;

    check-cast v7, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v7}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    iget-object v8, v2, Lcom/youku/vo/ChannelListInfo;->normal_icon:Ljava/lang/String;

    iget-object v9, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconThree:Landroid/widget/ImageView;

    new-instance v10, Lcom/tudou/adapter/ClassifyHomeAdapter$7;

    invoke-direct {v10, p0, v3, v2}, Lcom/tudou/adapter/ClassifyHomeAdapter$7;-><init>(Lcom/tudou/adapter/ClassifyHomeAdapter;Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;Lcom/youku/vo/ChannelListInfo;)V

    invoke-virtual {v7, v8, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    goto/16 :goto_4

    .line 289
    :cond_7
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearThree:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearFour:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 291
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeThree:Landroid/widget/RelativeLayout;

    const v8, 0x7f020622

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 292
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeFour:Landroid/widget/RelativeLayout;

    const v8, 0x7f020622

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 307
    :cond_8
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconFour:Landroid/widget/ImageView;

    iget-object v8, v2, Lcom/youku/vo/ChannelListInfo;->normal_icon:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 308
    iget-object v7, p0, Lcom/tudou/adapter/ClassifyHomeAdapter;->mContext:Landroid/app/Activity;

    check-cast v7, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v7}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    iget-object v8, v2, Lcom/youku/vo/ChannelListInfo;->normal_icon:Ljava/lang/String;

    iget-object v9, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mIconFour:Landroid/widget/ImageView;

    new-instance v10, Lcom/tudou/adapter/ClassifyHomeAdapter$10;

    invoke-direct {v10, p0, v3, v2}, Lcom/tudou/adapter/ClassifyHomeAdapter$10;-><init>(Lcom/tudou/adapter/ClassifyHomeAdapter;Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;Lcom/youku/vo/ChannelListInfo;)V

    invoke-virtual {v7, v8, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    goto/16 :goto_5

    .line 352
    :cond_9
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mLinearFour:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 353
    iget-object v7, v3, Lcom/tudou/adapter/ClassifyHomeAdapter$ViewHolder;->mRelativeFour:Landroid/widget/RelativeLayout;

    const v8, 0x7f020622

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_6
.end method
