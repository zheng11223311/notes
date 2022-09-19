.class public Lcom/tudou/adapter/CacheViewPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "CacheViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;
    }
.end annotation


# instance fields
.field public cachedFragment:Lcom/tudou/ui/fragment/CachedFragment;

.field public cachingFragment:Lcom/tudou/ui/fragment/CachingFragment;

.field private fragmentCount:I

.field private mContext:Landroid/app/Activity;

.field private onDataFinishListener:Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;

.field private onNotPauseInfoCountChangeListener:Lcom/tudou/ui/fragment/CachingFragment$OnNotPauseInfoCountChangeListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "mContext"    # Landroid/app/Activity;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 27
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 21
    const/4 v0, 0x2

    iput v0, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->fragmentCount:I

    .line 28
    iput-object p1, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->mContext:Landroid/app/Activity;

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->fragmentCount:I

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->mContext:Landroid/app/Activity;

    const-class v1, Lcom/tudou/ui/fragment/CachedFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/CachedFragment;

    iput-object v0, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->cachedFragment:Lcom/tudou/ui/fragment/CachedFragment;

    .line 36
    iget-object v0, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->cachedFragment:Lcom/tudou/ui/fragment/CachedFragment;

    iget-object v1, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->onDataFinishListener:Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/CachedFragment;->setOnDataFinishListener(Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;)V

    .line 37
    iget-object v0, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->cachedFragment:Lcom/tudou/ui/fragment/CachedFragment;

    .line 43
    :goto_0
    return-object v0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->mContext:Landroid/app/Activity;

    const-class v1, Lcom/tudou/ui/fragment/CachingFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/CachingFragment;

    iput-object v0, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->cachingFragment:Lcom/tudou/ui/fragment/CachingFragment;

    .line 41
    iget-object v0, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->cachingFragment:Lcom/tudou/ui/fragment/CachingFragment;

    iget-object v1, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->onDataFinishListener:Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/CachingFragment;->setOnDataFinishListener(Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;)V

    .line 42
    iget-object v0, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->cachingFragment:Lcom/tudou/ui/fragment/CachingFragment;

    iget-object v1, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->onNotPauseInfoCountChangeListener:Lcom/tudou/ui/fragment/CachingFragment$OnNotPauseInfoCountChangeListener;

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/CachingFragment;->setOnNotPauseInfoCountChangeListener(Lcom/tudou/ui/fragment/CachingFragment$OnNotPauseInfoCountChangeListener;)V

    .line 43
    iget-object v0, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->cachingFragment:Lcom/tudou/ui/fragment/CachingFragment;

    goto :goto_0
.end method

.method public isEdit(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->cachedFragment:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CachedFragment;->isEdit()Z

    move-result v0

    .line 57
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->cachingFragment:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CachingFragment;->isEdit()Z

    move-result v0

    goto :goto_0
.end method

.method public refreshData(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 93
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 94
    const-string v0, "REFRESH_CACHING"

    invoke-static {v0}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->cachingFragment:Lcom/tudou/ui/fragment/CachingFragment;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->cachingFragment:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CachingFragment;->refresh()V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const-string v0, "REFRESH_BOTH"

    invoke-static {v0}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->cachedFragment:Lcom/tudou/ui/fragment/CachedFragment;

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->cachedFragment:Lcom/tudou/ui/fragment/CachedFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/CachedFragment;->refresh(Z)V

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->cachingFragment:Lcom/tudou/ui/fragment/CachingFragment;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->cachingFragment:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CachingFragment;->refresh()V

    goto :goto_0
.end method

.method public setEdit(IZ)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "isEdit"    # Z

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->cachedFragment:Lcom/tudou/ui/fragment/CachedFragment;

    invoke-virtual {v0, p2}, Lcom/tudou/ui/fragment/CachedFragment;->setEdit(Z)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->cachingFragment:Lcom/tudou/ui/fragment/CachingFragment;

    invoke-virtual {v0, p2}, Lcom/tudou/ui/fragment/CachingFragment;->setEdit(Z)V

    goto :goto_0
.end method

.method public setOnDataFinishListener(Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;)V
    .locals 0
    .param p1, "onDataFinishListener"    # Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->onDataFinishListener:Lcom/tudou/adapter/CacheViewPagerAdapter$OnDataFinishListener;

    .line 73
    return-void
.end method

.method public setOnNotPauseInfoCountChangeListener(Lcom/tudou/ui/fragment/CachingFragment$OnNotPauseInfoCountChangeListener;)V
    .locals 0
    .param p1, "onNotPauseInfoCountChangeListener"    # Lcom/tudou/ui/fragment/CachingFragment$OnNotPauseInfoCountChangeListener;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/tudou/adapter/CacheViewPagerAdapter;->onNotPauseInfoCountChangeListener:Lcom/tudou/ui/fragment/CachingFragment$OnNotPauseInfoCountChangeListener;

    .line 79
    return-void
.end method
