.class public Lcom/youku/gamecenter/GamePresentActivity;
.super Lcom/youku/gamecenter/GameBaseActivity;
.source "GamePresentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final GAMEPRESENT_LOCAL:I = 0x1

.field public static final GAMEPRESENT_TOTAL:I = 0x0

.field private static final TAB_SPLIT_HEIGHT:I = 0x17

.field public static pageSize:I


# instance fields
.field private mNoResultImageView:Landroid/widget/ImageView;

.field private mNoResultTextView:Landroid/widget/TextView;

.field private mRequestPage:I

.field private mTabLayout:Landroid/widget/LinearLayout;

.field private mTabWraplaLayout:Landroid/widget/RelativeLayout;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private myAdapter:Lcom/youku/gamecenter/adapter/PresentTotalActivityAdapter;

.field private pageNames:[Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x2

    sput v0, Lcom/youku/gamecenter/GamePresentActivity;->pageSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 21
    invoke-direct {p0}, Lcom/youku/gamecenter/GameBaseActivity;-><init>()V

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u62a2\u793c\u5305"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "\u5b58\u53f7\u7bb1"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentActivity;->pageNames:[Ljava/lang/String;

    .line 30
    iput v3, p0, Lcom/youku/gamecenter/GamePresentActivity;->mRequestPage:I

    return-void
.end method

.method private drawTabs(I)V
    .locals 12
    .param p1, "drawWidth"    # I

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x10

    const/4 v9, -0x1

    .line 109
    if-eqz p1, :cond_1

    .line 110
    iput p1, p0, Lcom/youku/gamecenter/GamePresentActivity;->width:I

    .line 113
    :goto_0
    const/4 v7, 0x0

    invoke-static {p0, v7}, Lcom/youku/gamecenter/util/SystemUtils;->dip2px(Landroid/content/Context;F)I

    move-result v7

    int-to-float v4, v7

    .line 114
    .local v4, "split":F
    iget v7, p0, Lcom/youku/gamecenter/GamePresentActivity;->width:I

    int-to-float v7, v7

    sget v8, Lcom/youku/gamecenter/GamePresentActivity;->pageSize:I

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    sget v8, Lcom/youku/gamecenter/GamePresentActivity;->pageSize:I

    int-to-float v8, v8

    div-float v5, v7, v8

    .line 115
    .local v5, "tabWidth":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v7, Lcom/youku/gamecenter/GamePresentActivity;->pageSize:I

    if-ge v0, v7, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lcom/youku/gamecenter/R$layout;->tab_title_textview:I

    invoke-virtual {v7, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 119
    .local v6, "textView":Landroid/widget/TextView;
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setId(I)V

    .line 120
    iget-object v7, p0, Lcom/youku/gamecenter/GamePresentActivity;->pageNames:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v7, v5

    invoke-direct {v2, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 124
    .local v2, "param":Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 125
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v7, p0, Lcom/youku/gamecenter/GamePresentActivity;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    sget v7, Lcom/youku/gamecenter/GamePresentActivity;->pageSize:I

    add-int/lit8 v7, v7, -0x1

    if-ge v0, v7, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lcom/youku/gamecenter/R$layout;->tav_title_divider_line:I

    invoke-virtual {v7, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 130
    .local v1, "iv":Landroid/widget/ImageView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v3, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 132
    .local v3, "paramDividerLine":Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 133
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v7, p0, Lcom/youku/gamecenter/GamePresentActivity;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    .end local v1    # "iv":Landroid/widget/ImageView;
    .end local v3    # "paramDividerLine":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    .end local v0    # "i":I
    .end local v2    # "param":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "split":F
    .end local v5    # "tabWidth":F
    .end local v6    # "textView":Landroid/widget/TextView;
    :cond_1
    iget-object v7, p0, Lcom/youku/gamecenter/GamePresentActivity;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    iput v7, p0, Lcom/youku/gamecenter/GamePresentActivity;->width:I

    goto :goto_0

    .line 137
    .restart local v0    # "i":I
    .restart local v4    # "split":F
    .restart local v5    # "tabWidth":F
    :cond_2
    return-void
.end method

.method private initDatas()V
    .locals 4

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 69
    .local v1, "tabId":I
    const-string/jumbo v2, "tabId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    const-string/jumbo v2, "tabId"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 72
    :cond_0
    invoke-direct {p0, v1}, Lcom/youku/gamecenter/GamePresentActivity;->updateTabs(I)V

    .line 74
    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/youku/gamecenter/R$string;->game_title_page_name_present:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/youku/gamecenter/GamePresentActivity;->setTitlePageName(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 80
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentActivity;->mGamePresent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 82
    sget v0, Lcom/youku/gamecenter/R$id;->layout_tab:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GamePresentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentActivity;->mTabLayout:Landroid/widget/LinearLayout;

    .line 83
    sget v0, Lcom/youku/gamecenter/R$id;->viewpager:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GamePresentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 84
    sget v0, Lcom/youku/gamecenter/R$id;->tab_wrap_layout:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GamePresentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentActivity;->mTabWraplaLayout:Landroid/widget/RelativeLayout;

    .line 85
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentActivity;->mTabWraplaLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 86
    sget v0, Lcom/youku/gamecenter/R$id;->iv_no_result:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GamePresentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentActivity;->mNoResultImageView:Landroid/widget/ImageView;

    .line 87
    sget v0, Lcom/youku/gamecenter/R$id;->tv_no_result:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GamePresentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/GamePresentActivity;->mNoResultTextView:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentActivity;->mNoResultImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentActivity;->mNoResultTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    return-void
.end method

.method private updateTabs(I)V
    .locals 4
    .param p1, "tabId"    # I

    .prologue
    .line 94
    const-string v1, "GamePrsentHome"

    const-string/jumbo v2, "updateTabs"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 97
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 98
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/GamePresentActivity;->drawTabs(I)V

    .line 99
    iget v1, p0, Lcom/youku/gamecenter/GamePresentActivity;->mRequestPage:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GamePresentActivity;->updateTabColor(I)V

    .line 100
    new-instance v1, Lcom/youku/gamecenter/adapter/PresentTotalActivityAdapter;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GamePresentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/GamePresentActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v1, v2, p0, v3}, Lcom/youku/gamecenter/adapter/PresentTotalActivityAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/youku/gamecenter/GamePresentActivity;Landroid/support/v4/view/ViewPager;)V

    iput-object v1, p0, Lcom/youku/gamecenter/GamePresentActivity;->myAdapter:Lcom/youku/gamecenter/adapter/PresentTotalActivityAdapter;

    .line 102
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/youku/gamecenter/GamePresentActivity;->myAdapter:Lcom/youku/gamecenter/adapter/PresentTotalActivityAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 104
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 106
    return-void
.end method


# virtual methods
.method getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string/jumbo v0, "\u793c\u5305\u4e2d\u5fc3"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/youku/gamecenter/statistics/GameAnalytics;->trackPageClick(Landroid/content/Context;II)V

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GamePresentActivity;->updateTabColor(I)V

    .line 171
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 173
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lcom/youku/gamecenter/GamePresentActivity;->isPresentNewShow:Z

    .line 49
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentActivity;->initView()V

    .line 51
    invoke-direct {p0}, Lcom/youku/gamecenter/GamePresentActivity;->initDatas()V

    .line 53
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 59
    const-string/jumbo v1, "tabId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const-string/jumbo v1, "tabId"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 61
    .local v0, "tabId":I
    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 64
    .end local v0    # "tabId":I
    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 177
    return-void
.end method

.method public setLayout()V
    .locals 1

    .prologue
    .line 158
    sget v0, Lcom/youku/gamecenter/R$layout;->activity_game_home:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GamePresentActivity;->setContentView(I)V

    .line 159
    return-void
.end method

.method public updateTabColor(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 141
    const/4 v1, 0x0

    .line 142
    .local v1, "mTagView":Landroid/view/View;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/youku/gamecenter/GamePresentActivity;->pageSize:I

    if-ge v0, v2, :cond_1

    .line 143
    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GamePresentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 146
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 142
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/GamePresentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_2

    .line 151
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 152
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 154
    :cond_2
    return-void
.end method
