.class public Lcom/tudou/guide/GuideActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "GuideActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/guide/GuideActivity$ImagePagerAdapter;
    }
.end annotation


# instance fields
.field adapter:Lcom/tudou/guide/GuideActivity$ImagePagerAdapter;

.field context:Landroid/content/Context;

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mImageIds:[Ljava/lang/Integer;

.field viewpager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const v2, 0x7f020359

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f020622

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/tudou/guide/GuideActivity;->mImageIds:[Ljava/lang/Integer;

    .line 101
    return-void
.end method

.method private initListView()V
    .locals 8

    .prologue
    .line 68
    iget-object v4, p0, Lcom/tudou/guide/GuideActivity;->mImageIds:[Ljava/lang/Integer;

    array-length v2, v4

    .line 69
    .local v2, "len":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/tudou/guide/GuideActivity;->list:Ljava/util/ArrayList;

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 71
    add-int/lit8 v4, v2, -0x1

    if-ne v0, v4, :cond_0

    .line 72
    iget-object v4, p0, Lcom/tudou/guide/GuideActivity;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030169

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 74
    .local v3, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/tudou/guide/GuideActivity;->mImageIds:[Ljava/lang/Integer;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 75
    new-instance v4, Lcom/tudou/guide/GuideActivity$1;

    invoke-direct {v4, p0}, Lcom/tudou/guide/GuideActivity$1;-><init>(Lcom/tudou/guide/GuideActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v4, p0, Lcom/tudou/guide/GuideActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .end local v3    # "v":Landroid/view/View;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/tudou/guide/GuideActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 85
    .local v1, "image":Landroid/widget/ImageView;
    const v4, 0x7f020ad9

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 86
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 87
    iget-object v4, p0, Lcom/tudou/guide/GuideActivity;->mImageIds:[Ljava/lang/Integer;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    add-int/lit8 v4, v2, -0x2

    if-ne v0, v4, :cond_1

    .line 89
    new-instance v4, Lcom/tudou/guide/GuideActivity$2;

    invoke-direct {v4, p0}, Lcom/tudou/guide/GuideActivity$2;-><init>(Lcom/tudou/guide/GuideActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :cond_1
    iget-object v4, p0, Lcom/tudou/guide/GuideActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 99
    .end local v1    # "image":Landroid/widget/ImageView;
    :cond_2
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 53
    const v0, 0x7f0c01ab

    invoke-virtual {p0, v0}, Lcom/tudou/guide/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/tudou/guide/GuideActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    .line 54
    new-instance v0, Lcom/tudou/guide/GuideActivity$ImagePagerAdapter;

    invoke-direct {v0, p0}, Lcom/tudou/guide/GuideActivity$ImagePagerAdapter;-><init>(Lcom/tudou/guide/GuideActivity;)V

    iput-object v0, p0, Lcom/tudou/guide/GuideActivity;->adapter:Lcom/tudou/guide/GuideActivity$ImagePagerAdapter;

    .line 55
    iget-object v0, p0, Lcom/tudou/guide/GuideActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/tudou/guide/GuideActivity;->adapter:Lcom/tudou/guide/GuideActivity$ImagePagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 56
    iget-object v0, p0, Lcom/tudou/guide/GuideActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 43
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0, v2}, Lcom/tudou/guide/GuideActivity;->requestWindowFeature(I)Z

    .line 45
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/tudou/guide/GuideActivity;->setContentView(I)V

    .line 46
    iput-object p0, p0, Lcom/tudou/guide/GuideActivity;->context:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/tudou/guide/GuideActivity;->initListView()V

    .line 48
    invoke-direct {p0}, Lcom/tudou/guide/GuideActivity;->initView()V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startGuide"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/youku/config/Profile;->VER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 50
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 61
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tudou/ui/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 133
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 139
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/tudou/guide/GuideActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/tudou/guide/GuideActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/tudou/guide/GuideActivity;->finish()V

    .line 146
    :cond_0
    return-void
.end method
