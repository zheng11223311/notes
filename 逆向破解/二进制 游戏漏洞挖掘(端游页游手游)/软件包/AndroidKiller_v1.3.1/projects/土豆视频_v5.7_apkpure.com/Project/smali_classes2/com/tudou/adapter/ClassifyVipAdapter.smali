.class public Lcom/tudou/adapter/ClassifyVipAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "ClassifyVipAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSkipInfo:Lcom/youku/vo/SkipInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/youku/vo/SkipInfo;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mSkipInfo"    # Lcom/youku/vo/SkipInfo;
    .param p3, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 23
    invoke-direct {p0, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 24
    iput-object p2, p0, Lcom/tudou/adapter/ClassifyVipAdapter;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    .line 25
    iput-object p1, p0, Lcom/tudou/adapter/ClassifyVipAdapter;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 30
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v1, "mBundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/tudou/service/classify/ClassifyManager;->getVipFilterTag()Lcom/youku/vo/SkipInfo;

    move-result-object v2

    .line 33
    .local v2, "mSkipInfo":Lcom/youku/vo/SkipInfo;
    if-nez p1, :cond_0

    .line 34
    const-string v3, "quality"

    iput-object v3, v2, Lcom/youku/vo/SkipInfo;->brief_sort_by:Ljava/lang/String;

    .line 38
    :goto_0
    const-string v3, "show_title"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    const-string v3, "skip_info"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 40
    iget-object v3, p0, Lcom/tudou/adapter/ClassifyVipAdapter;->mContext:Landroid/content/Context;

    const-class v4, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;

    .line 41
    .local v0, "fragment":Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;
    return-object v0

    .line 36
    .end local v0    # "fragment":Lcom/tudou/ui/fragment/ClassifySelectedResultsFragment;
    :cond_0
    const-string v3, "pubTime"

    iput-object v3, v2, Lcom/youku/vo/SkipInfo;->brief_sort_by:Ljava/lang/String;

    goto :goto_0
.end method
