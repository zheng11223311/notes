.class public Lcom/youku/gamecenter/GameNetActivity;
.super Lcom/youku/gamecenter/GameBaseActivity;
.source "GameNetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static pageSize:I


# instance fields
.field private mNoResultImageView:Landroid/widget/ImageView;

.field private mNoResultTextView:Landroid/widget/TextView;

.field private mRequestPage:I

.field private mTabLayout:Landroid/widget/LinearLayout;

.field private mTabWraplaLayout:Landroid/widget/RelativeLayout;

.field public mViewPager:Landroid/support/v4/view/ViewPager;

.field private myAdapter:Lcom/youku/gamecenter/adapter/GameNetActivityAdapter;

.field private pageNames:[Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x3

    sput v0, Lcom/youku/gamecenter/GameNetActivity;->pageSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 23
    invoke-direct {p0}, Lcom/youku/gamecenter/GameBaseActivity;-><init>()V

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u7cbe\u9009"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "\u6700\u70ed"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "\u6700\u65b0"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/youku/gamecenter/GameNetActivity;->pageNames:[Ljava/lang/String;

    .line 31
    iput v3, p0, Lcom/youku/gamecenter/GameNetActivity;->mRequestPage:I

    return-void
.end method

.method private drawTabs(I)V
    .locals 12
    .param p1, "drawWidth"    # I

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x10

    const/4 v9, -0x1

    .line 88
    if-eqz p1, :cond_1

    .line 89
    iput p1, p0, Lcom/youku/gamecenter/GameNetActivity;->width:I

    .line 92
    :goto_0
    const/4 v7, 0x0

    invoke-static {p0, v7}, Lcom/youku/gamecenter/util/SystemUtils;->dip2px(Landroid/content/Context;F)I

    move-result v7

    int-to-float v4, v7

    .line 93
    .local v4, "split":F
    iget v7, p0, Lcom/youku/gamecenter/GameNetActivity;->width:I

    int-to-float v7, v7

    sget v8, Lcom/youku/gamecenter/GameNetActivity;->pageSize:I

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    sget v8, Lcom/youku/gamecenter/GameNetActivity;->pageSize:I

    int-to-float v8, v8

    div-float v5, v7, v8

    .line 94
    .local v5, "tabWidth":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v7, Lcom/youku/gamecenter/GameNetActivity;->pageSize:I

    if-ge v0, v7, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameNetActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lcom/youku/gamecenter/R$layout;->tab_title_textview:I

    invoke-virtual {v7, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 98
    .local v6, "textView":Landroid/widget/TextView;
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setId(I)V

    .line 99
    iget-object v7, p0, Lcom/youku/gamecenter/GameNetActivity;->pageNames:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v7, v5

    invoke-direct {v2, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 103
    .local v2, "param":Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 104
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v7, p0, Lcom/youku/gamecenter/GameNetActivity;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    sget v7, Lcom/youku/gamecenter/GameNetActivity;->pageSize:I

    add-int/lit8 v7, v7, -0x1

    if-ge v0, v7, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameNetActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lcom/youku/gamecenter/R$layout;->tav_title_divider_line:I

    invoke-virtual {v7, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 109
    .local v1, "iv":Landroid/widget/ImageView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v3, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 111
    .local v3, "paramDividerLine":Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 112
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v7, p0, Lcom/youku/gamecenter/GameNetActivity;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    .end local v1    # "iv":Landroid/widget/ImageView;
    .end local v3    # "paramDividerLine":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    .end local v0    # "i":I
    .end local v2    # "param":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "split":F
    .end local v5    # "tabWidth":F
    .end local v6    # "textView":Landroid/widget/TextView;
    :cond_1
    iget-object v7, p0, Lcom/youku/gamecenter/GameNetActivity;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    iput v7, p0, Lcom/youku/gamecenter/GameNetActivity;->width:I

    goto :goto_0

    .line 116
    .restart local v0    # "i":I
    .restart local v4    # "split":F
    .restart local v5    # "tabWidth":F
    :cond_2
    return-void
.end method

.method private initDatas()V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "tabId":I
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameNetActivity;->updateTabs(I)V

    .line 55
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameNetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$string;->game_net_rank:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameNetActivity;->setTitlePageName(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 60
    sget v0, Lcom/youku/gamecenter/R$id;->layout_tab:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameNetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/gamecenter/GameNetActivity;->mTabLayout:Landroid/widget/LinearLayout;

    .line 61
    sget v0, Lcom/youku/gamecenter/R$id;->viewpager:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameNetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/youku/gamecenter/GameNetActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 62
    iget-object v0, p0, Lcom/youku/gamecenter/GameNetActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 63
    sget v0, Lcom/youku/gamecenter/R$id;->tab_wrap_layout:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameNetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/gamecenter/GameNetActivity;->mTabWraplaLayout:Landroid/widget/RelativeLayout;

    .line 64
    iget-object v0, p0, Lcom/youku/gamecenter/GameNetActivity;->mTabWraplaLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 65
    sget v0, Lcom/youku/gamecenter/R$id;->iv_no_result:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameNetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/gamecenter/GameNetActivity;->mNoResultImageView:Landroid/widget/ImageView;

    .line 66
    sget v0, Lcom/youku/gamecenter/R$id;->tv_no_result:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameNetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/GameNetActivity;->mNoResultTextView:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/youku/gamecenter/GameNetActivity;->mNoResultImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/youku/gamecenter/GameNetActivity;->mNoResultTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    return-void
.end method

.method private updateTabs(I)V
    .locals 4
    .param p1, "tabId"    # I

    .prologue
    .line 73
    const-string v1, "GamePrsentHome"

    const-string/jumbo v2, "updateTabs"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameNetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 76
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameNetActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 77
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/GameNetActivity;->drawTabs(I)V

    .line 78
    iget v1, p0, Lcom/youku/gamecenter/GameNetActivity;->mRequestPage:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameNetActivity;->updateTabColor(I)V

    .line 79
    new-instance v1, Lcom/youku/gamecenter/adapter/GameNetActivityAdapter;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameNetActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/GameNetActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v1, v2, p0, v3}, Lcom/youku/gamecenter/adapter/GameNetActivityAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/youku/gamecenter/GameNetActivity;Landroid/support/v4/view/ViewPager;)V

    iput-object v1, p0, Lcom/youku/gamecenter/GameNetActivity;->myAdapter:Lcom/youku/gamecenter/adapter/GameNetActivityAdapter;

    .line 81
    iget-object v1, p0, Lcom/youku/gamecenter/GameNetActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/youku/gamecenter/GameNetActivity;->myAdapter:Lcom/youku/gamecenter/adapter/GameNetActivityAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 83
    iget-object v1, p0, Lcom/youku/gamecenter/GameNetActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 85
    return-void
.end method


# virtual methods
.method getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const-string/jumbo v0, "\u7f51\u7edc\u6e38\u620f"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/youku/gamecenter/GameNetActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/youku/gamecenter/statistics/GameAnalytics;->trackPageClick(Landroid/content/Context;II)V

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameNetActivity;->updateTabColor(I)V

    .line 150
    iget-object v0, p0, Lcom/youku/gamecenter/GameNetActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 152
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-direct {p0}, Lcom/youku/gamecenter/GameNetActivity;->initView()V

    .line 47
    invoke-direct {p0}, Lcom/youku/gamecenter/GameNetActivity;->initDatas()V

    .line 49
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/youku/gamecenter/GameNetActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 156
    return-void
.end method

.method public setLayout()V
    .locals 1

    .prologue
    .line 137
    sget v0, Lcom/youku/gamecenter/R$layout;->activity_game_home:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameNetActivity;->setContentView(I)V

    .line 138
    return-void
.end method

.method public updateTabColor(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, "mTagView":Landroid/view/View;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/youku/gamecenter/GameNetActivity;->pageSize:I

    if-ge v0, v2, :cond_1

    .line 122
    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameNetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 125
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 121
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/GameNetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_2

    .line 130
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 131
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 133
    :cond_2
    return-void
.end method
