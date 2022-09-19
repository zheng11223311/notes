.class public Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "GameManagerActivityAdapter.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Lcom/youku/gamecenter/GameManagerActivity;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;->fragments:Ljava/util/List;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Lcom/youku/gamecenter/GameManagerActivity;Landroid/support/v4/view/ViewPager;)V
    .locals 4
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "activity"    # Lcom/youku/gamecenter/GameManagerActivity;
    .param p3, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 21
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;->fragments:Ljava/util/List;

    .line 30
    iput-object p2, p0, Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;->mActivity:Lcom/youku/gamecenter/GameManagerActivity;

    .line 31
    iput-object p3, p0, Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 32
    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 34
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;->mActivity:Lcom/youku/gamecenter/GameManagerActivity;

    iget-object v2, v2, Lcom/youku/gamecenter/GameManagerActivity;->mTabTitleIds:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 35
    const/16 v2, 0xa

    invoke-static {v2}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->newInstance(I)Lcom/youku/gamecenter/fragment/GameBaseFragment;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/GameManagerFragment;

    .line 37
    .local v0, "fragment":Lcom/youku/gamecenter/GameManagerFragment;
    invoke-direct {p0, v1}, Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;->getTypeByPosition(I)Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/youku/gamecenter/GameManagerFragment;->setGameManagerType(Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;)V

    .line 38
    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;->fragments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget v2, Lcom/youku/gamecenter/GameManagerActivity;->sCurrentFocusFragmentId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 40
    sput v1, Lcom/youku/gamecenter/GameManagerActivity;->sCurrentFocusFragmentId:I

    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v0    # "fragment":Lcom/youku/gamecenter/GameManagerFragment;
    :cond_1
    return-void
.end method

.method private getTypeByPosition(I)Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 46
    packed-switch p1, :pswitch_data_0

    .line 54
    sget-object v0, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;->TYPE_UNKNOW:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    :goto_0
    return-object v0

    .line 48
    :pswitch_0
    sget-object v0, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;->TYPE_INSTALLED:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    goto :goto_0

    .line 50
    :pswitch_1
    sget-object v0, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;->TYPE_UNINSTALLED:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    goto :goto_0

    .line 52
    :pswitch_2
    sget-object v0, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;->TYPE_UPGRADE:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 59
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;->scrollToPage()V

    .line 62
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 67
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;->scrollToPage()V

    .line 72
    return-void
.end method

.method public scrollToPage()V
    .locals 3

    .prologue
    .line 85
    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;->mActivity:Lcom/youku/gamecenter/GameManagerActivity;

    iget-object v2, p0, Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/GameManagerActivity;->updateTabColor(I)V

    .line 86
    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/fragment/GameBaseFragment;

    iget v0, v1, Lcom/youku/gamecenter/fragment/GameBaseFragment;->mId:I

    .line 88
    .local v0, "id":I
    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/fragment/GameBaseFragment;

    invoke-virtual {v1}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/fragment/GameBaseFragment;

    invoke-virtual {v1}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->loadDatas()V

    .line 92
    :cond_0
    sput v0, Lcom/youku/gamecenter/GameManagerActivity;->sCurrentFocusFragmentId:I

    .line 93
    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/fragment/GameBaseFragment;

    invoke-virtual {v1}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->notifyFragmentFocused()V

    .line 94
    return-void
.end method
