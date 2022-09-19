.class public Lcom/tudou/adapter/ClassifyFeatureViewPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "ClassifyFeatureViewPagerAdapter.java"


# instance fields
.field private mChannelListInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelListInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 27
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 28
    iput-object p1, p0, Lcom/tudou/adapter/ClassifyFeatureViewPagerAdapter;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "fm"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelListInfo;",
            ">;",
            "Landroid/support/v4/app/FragmentManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "mChannelListInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelListInfo;>;"
    invoke-direct {p0, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 33
    iput-object p1, p0, Lcom/tudou/adapter/ClassifyFeatureViewPagerAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/tudou/adapter/ClassifyFeatureViewPagerAdapter;->mChannelListInfoList:Ljava/util/List;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyFeatureViewPagerAdapter;->mChannelListInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 45
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyFeatureViewPagerAdapter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    .line 46
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "cid"

    iget-object v2, p0, Lcom/tudou/adapter/ClassifyFeatureViewPagerAdapter;->mChannelListInfoList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelListInfo;

    iget-object v2, v2, Lcom/youku/vo/ChannelListInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v2, v2, Lcom/youku/vo/SkipInfo;->channel_id:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v3, "channelName"

    iget-object v2, p0, Lcom/tudou/adapter/ClassifyFeatureViewPagerAdapter;->mChannelListInfoList:Ljava/util/List;

    iget-object v4, p0, Lcom/tudou/adapter/ClassifyFeatureViewPagerAdapter;->mChannelListInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int v4, p1, v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ChannelListInfo;

    iget-object v2, v2, Lcom/youku/vo/ChannelListInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v2, v2, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    return-object v1
.end method
