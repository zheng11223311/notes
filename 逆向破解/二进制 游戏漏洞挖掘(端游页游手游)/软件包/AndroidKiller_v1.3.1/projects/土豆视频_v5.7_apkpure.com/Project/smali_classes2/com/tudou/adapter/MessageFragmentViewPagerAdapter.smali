.class public Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "MessageFragmentViewPagerAdapter.java"


# instance fields
.field public checkedFragment:Lcom/tudou/ui/fragment/MessageCheckedFragment;

.field private fragmentCount:I

.field private isEdit:Z

.field private mContext:Landroid/content/Context;

.field public privateFragment:Lcom/tudou/ui/fragment/MessagePrivateFragment;

.field public systemFragment:Lcom/tudou/ui/fragment/MessageSystemFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 24
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;->fragmentCount:I

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;->isEdit:Z

    .line 25
    iput-object p1, p0, Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;->fragmentCount:I

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 30
    const-string v0, "MessageFragmentViewPagerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    if-nez p1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/tudou/ui/fragment/MessageSystemFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/MessageSystemFragment;

    iput-object v0, p0, Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;->systemFragment:Lcom/tudou/ui/fragment/MessageSystemFragment;

    .line 34
    iget-object v0, p0, Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;->systemFragment:Lcom/tudou/ui/fragment/MessageSystemFragment;

    .line 44
    :goto_0
    return-object v0

    .line 35
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/tudou/ui/fragment/MessageCheckedFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/MessageCheckedFragment;

    iput-object v0, p0, Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;->checkedFragment:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    .line 38
    iget-object v0, p0, Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;->checkedFragment:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/MessagePrivateFragment;

    iput-object v0, p0, Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;->privateFragment:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    .line 42
    iget-object v0, p0, Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;->privateFragment:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    goto :goto_0

    .line 44
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;->isEdit:Z

    return v0
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;->fragmentCount:I

    .line 54
    return-void
.end method

.method public setEdit(Z)V
    .locals 1
    .param p1, "isEdit"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;->isEdit:Z

    .line 62
    iget-object v0, p0, Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;->privateFragment:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/tudou/adapter/MessageFragmentViewPagerAdapter;->privateFragment:Lcom/tudou/ui/fragment/MessagePrivateFragment;

    invoke-virtual {v0, p1}, Lcom/tudou/ui/fragment/MessagePrivateFragment;->setEdit(Z)V

    .line 64
    :cond_0
    return-void
.end method
