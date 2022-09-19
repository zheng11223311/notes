.class public Lcom/youku/gamecenter/adapter/GameNetActivityAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "GameNetActivityAdapter.java"

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

.field private mActivity:Lcom/youku/gamecenter/GameNetActivity;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameNetActivityAdapter;->fragments:Ljava/util/List;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Lcom/youku/gamecenter/GameNetActivity;Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "mActivity"    # Lcom/youku/gamecenter/GameNetActivity;
    .param p3, "mViewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/adapter/GameNetActivityAdapter;->fragments:Ljava/util/List;

    .line 33
    iput-object p2, p0, Lcom/youku/gamecenter/adapter/GameNetActivityAdapter;->mActivity:Lcom/youku/gamecenter/GameNetActivity;

    .line 34
    iput-object p3, p0, Lcom/youku/gamecenter/adapter/GameNetActivityAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 35
    invoke-virtual {p3, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 37
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameNetActivityAdapter;->fragments:Ljava/util/List;

    const/16 v1, 0x16

    invoke-static {v1}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->newInstance(I)Lcom/youku/gamecenter/fragment/GameBaseFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameNetActivityAdapter;->fragments:Ljava/util/List;

    const/16 v1, 0x17

    invoke-static {v1}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->newInstance(I)Lcom/youku/gamecenter/fragment/GameBaseFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameNetActivityAdapter;->fragments:Ljava/util/List;

    const/16 v1, 0x18

    invoke-static {v1}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->newInstance(I)Lcom/youku/gamecenter/fragment/GameBaseFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method private scrollToPage()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameNetActivityAdapter;->mActivity:Lcom/youku/gamecenter/GameNetActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/adapter/GameNetActivityAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/GameNetActivity;->updateTabColor(I)V

    .line 49
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameNetActivityAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/adapter/GameNetActivityAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/fragment/GameBaseFragment;

    invoke-virtual {v0}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameNetActivityAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/adapter/GameNetActivityAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/fragment/GameBaseFragment;

    invoke-virtual {v0}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->loadDatas()V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameNetActivityAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/adapter/GameNetActivityAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/fragment/GameBaseFragment;

    invoke-virtual {v0}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->notifyFragmentFocused()V

    .line 57
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameNetActivityAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/youku/gamecenter/adapter/GameNetActivityAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 71
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/youku/gamecenter/adapter/GameNetActivityAdapter;->scrollToPage()V

    .line 75
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/youku/gamecenter/adapter/GameNetActivityAdapter;->scrollToPage()V

    .line 81
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 86
    return-void
.end method
