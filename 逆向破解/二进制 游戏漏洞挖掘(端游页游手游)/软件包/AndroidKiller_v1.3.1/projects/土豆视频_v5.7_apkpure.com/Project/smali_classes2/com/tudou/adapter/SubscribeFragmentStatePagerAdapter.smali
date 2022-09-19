.class public Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "SubscribeFragmentStatePagerAdapter.java"


# instance fields
.field public allfragment:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

.field private fragmentCount:I

.field public isAlbumfragment:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 24
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;->fragmentCount:I

    .line 25
    iput-object p1, p0, Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;->fragmentCount:I

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 30
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v1, "fragmentBundle":Landroid/os/Bundle;
    const-string v3, "isAlbum"

    if-ne p1, v2, :cond_0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 32
    iget-object v2, p0, Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    .line 35
    .local v0, "fragment":Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;
    if-nez p1, :cond_1

    .line 36
    iput-object v0, p0, Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;->allfragment:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    .line 40
    :goto_1
    return-object v0

    .line 31
    .end local v0    # "fragment":Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 38
    .restart local v0    # "fragment":Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;
    :cond_1
    iput-object v0, p0, Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;->isAlbumfragment:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    goto :goto_1
.end method

.method public scrollToHome(Z)V
    .locals 2
    .param p1, "isAlbum"    # Z

    .prologue
    const/4 v1, 0x0

    .line 53
    if-eqz p1, :cond_1

    .line 54
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;->isAlbumfragment:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;->isAlbumfragment:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;->isAlbumfragment:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->smoothScrollToPossion(I)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;->allfragment:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;->allfragment:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;->allfragment:Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SubscribeUpdateStreamFragment;->listView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->smoothScrollToPossion(I)V

    goto :goto_0
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/tudou/adapter/SubscribeFragmentStatePagerAdapter;->fragmentCount:I

    .line 50
    return-void
.end method
