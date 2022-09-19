.class public Lcom/tudou/detail/adapter/VideoVoteItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "VideoVoteItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field public mVoteInfo:Lcom/tudou/detail/vo/VoteInfo;

.field public mVoteMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tudou/detail/vo/VoteInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vote"    # Lcom/tudou/detail/vo/VoteInfo;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;->mVoteMode:Z

    .line 35
    sget-object v0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;->TAG:Ljava/lang/String;

    const-string v1, "FullscreenFragmentVoteItemAdapter cons"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;->mContext:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    iput-object p2, p0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;->mVoteInfo:Lcom/tudou/detail/vo/VoteInfo;

    .line 39
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;->getGoodsCount()I

    move-result v0

    return v0
.end method

.method public getGoodsCount()I
    .locals 3

    .prologue
    .line 57
    sget-object v1, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItemCount count = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;->mVoteInfo:Lcom/tudou/detail/vo/VoteInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;->mVoteInfo:Lcom/tudou/detail/vo/VoteInfo;

    iget-object v0, v0, Lcom/tudou/detail/vo/VoteInfo;->mVoteItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;->mVoteInfo:Lcom/tudou/detail/vo/VoteInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;->mVoteInfo:Lcom/tudou/detail/vo/VoteInfo;

    iget-object v0, v0, Lcom/tudou/detail/vo/VoteInfo;->mVoteItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    return v0

    .line 57
    :cond_0
    const-string v0, "null"

    goto :goto_0

    .line 58
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 53
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 63
    if-nez p2, :cond_0

    .line 64
    iget-object v4, p0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0300ca

    invoke-virtual {v4, v5, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 65
    .local v1, "root":Landroid/view/View;
    move-object p2, v1

    .line 66
    new-instance v4, Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;

    invoke-direct {v4, p0, p2}, Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;-><init>(Lcom/tudou/detail/adapter/VideoVoteItemAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    .end local v1    # "root":Landroid/view/View;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;

    .line 70
    .local v0, "holder":Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;
    iget-object v4, p0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;->mVoteInfo:Lcom/tudou/detail/vo/VoteInfo;

    iget-object v4, v4, Lcom/tudou/detail/vo/VoteInfo;->mVoteItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/detail/vo/VoteInfo$VoteItem;

    .line 71
    .local v3, "v":Lcom/tudou/detail/vo/VoteInfo$VoteItem;
    iput-object v3, v0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->item:Lcom/tudou/detail/vo/VoteInfo$VoteItem;

    .line 72
    if-eqz v3, :cond_1

    .line 73
    iget-object v4, v0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->title:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/tudou/detail/vo/VoteInfo$VoteItem;->content:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v4, p0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;->mVoteInfo:Lcom/tudou/detail/vo/VoteInfo;

    iget v4, v4, Lcom/tudou/detail/vo/VoteInfo;->mVoteType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 75
    iget-object v4, v0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->mImg:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v4, v0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->mImg:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object v4, v0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->mImgBg:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    iget-object v5, v3, Lcom/tudou/detail/vo/VoteInfo$VoteItem;->picUrl:Ljava/lang/String;

    iget-object v6, v0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->mImg:Landroid/widget/ImageView;

    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 83
    :goto_0
    iget-boolean v4, p0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;->mVoteMode:Z

    if-eqz v4, :cond_3

    .line 84
    iget-object v4, v0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->mProgress:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v4, v0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->mPercent:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    :cond_1
    :goto_1
    return-object p2

    .line 80
    :cond_2
    iget-object v4, v0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->mImg:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object v4, v0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->mImgBg:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 87
    :cond_3
    iget-object v4, v0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->mProgress:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v4, v0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->mPercent:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v4, v0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->mPercent:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v3, Lcom/tudou/detail/vo/VoteInfo$VoteItem;->mPercent:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const/high16 v4, 0x43b40000    # 360.0f

    invoke-static {v4}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    .line 92
    .local v2, "totalWidth":I
    iget-object v4, v0, Lcom/tudou/detail/adapter/VideoVoteItemAdapter$FullscreenFragmentVideoVoteItemHolder;->mProgress:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, v3, Lcom/tudou/detail/vo/VoteInfo$VoteItem;->mPercent:I

    mul-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x64

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method
