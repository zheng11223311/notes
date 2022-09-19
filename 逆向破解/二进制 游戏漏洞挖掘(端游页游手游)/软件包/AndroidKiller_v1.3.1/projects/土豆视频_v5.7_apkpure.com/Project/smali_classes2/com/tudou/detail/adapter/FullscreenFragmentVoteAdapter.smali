.class public Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter;
.super Landroid/widget/BaseAdapter;
.source "FullscreenFragmentVoteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter$FullscreenFragmentVideoVoteItemHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mVoteInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VoteInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VoteInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "vote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VoteInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    sget-object v0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter;->TAG:Ljava/lang/String;

    const-string v1, "FullscreenFragmentVoteAdapter cons"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter;->mContext:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 33
    iput-object p2, p0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter;->mVoteInfos:Ljava/util/ArrayList;

    .line 34
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter;->getGoodsCount()I

    move-result v0

    return v0
.end method

.method public getGoodsCount()I
    .locals 3

    .prologue
    .line 52
    sget-object v1, Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItemCount count = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter;->mVoteInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter;->mVoteInfos:Ljava/util/ArrayList;

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

    .line 53
    iget-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter;->mVoteInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter;->mVoteInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    return v0

    .line 52
    :cond_0
    const-string v0, "null"

    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 48
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 58
    if-nez p2, :cond_0

    .line 59
    iget-object v3, p0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0300d6

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 60
    .local v1, "root":Landroid/view/View;
    move-object p2, v1

    .line 61
    new-instance v3, Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter$FullscreenFragmentVideoVoteItemHolder;

    invoke-direct {v3, p0, p2}, Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter$FullscreenFragmentVideoVoteItemHolder;-><init>(Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    .end local v1    # "root":Landroid/view/View;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter$FullscreenFragmentVideoVoteItemHolder;

    .line 65
    .local v0, "holder":Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter$FullscreenFragmentVideoVoteItemHolder;
    iget-object v3, p0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter;->mVoteInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/vo/VoteInfo;

    .line 66
    .local v2, "v":Lcom/tudou/detail/vo/VoteInfo;
    iput-object v2, v0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter$FullscreenFragmentVideoVoteItemHolder;->vote:Lcom/tudou/detail/vo/VoteInfo;

    .line 67
    if-eqz v2, :cond_1

    .line 68
    iget-object v3, v0, Lcom/tudou/detail/adapter/FullscreenFragmentVoteAdapter$FullscreenFragmentVideoVoteItemHolder;->title:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/tudou/detail/vo/VoteInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_1
    return-object p2
.end method
