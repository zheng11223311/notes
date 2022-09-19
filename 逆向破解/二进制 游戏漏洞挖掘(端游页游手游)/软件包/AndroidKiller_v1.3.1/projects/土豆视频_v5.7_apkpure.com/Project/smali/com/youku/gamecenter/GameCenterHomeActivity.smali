.class public Lcom/youku/gamecenter/GameCenterHomeActivity;
.super Lcom/youku/gamecenter/GameBaseActivity;
.source "GameCenterHomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/youku/gamecenter/services/GetHomePageService$OnHomePageServiceListener;
.implements Lcom/youku/gamecenter/services/GetHomePageOfflineDataService$onLoadHomePageOfflineDataListener;
.implements Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;
.implements Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkUnavailableListener;


# static fields
.field public static final LINKTO_CATEGORY_PAGE:Ljava/lang/String; = "category_page"

.field public static final LINKTO_EXTEND_PAGE:Ljava/lang/String; = "extend_page"

.field public static final LINKTO_HOME_PAGE:Ljava/lang/String; = "home_page"

.field public static final LINKTO_RANK_PAGE:Ljava/lang/String; = "rank_page"

.field private static final TAB_SPLIT_HEIGHT:I = 0x17

.field public static notFreeFlowDialogIsShow:Z

.field public static sCurrentFocusFragmentId:I


# instance fields
.field public mFids:[I

.field mFromShortcut:Z

.field private mHomeDialogHelper:Lcom/youku/gamecenter/outer/HomeDialogHelper;

.field public mHomePageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

.field private mIsNeedSetOfflineEndPage:Z

.field private mLinkTo:Ljava/lang/String;

.field private mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

.field private mNoNetworkTipView:Landroid/view/View;

.field private mNoResultImageView:Landroid/widget/ImageView;

.field private mNoResultTextView:Landroid/widget/TextView;

.field private mSetnetBtn:Landroid/view/View;

.field private mSource:Ljava/lang/String;

.field private mTabLayout:Landroid/widget/LinearLayout;

.field private mTabWraplaLayout:Landroid/widget/RelativeLayout;

.field public mViewPager:Landroid/support/v4/view/ViewPager;

.field private myPagerAdapter:Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/gamecenter/GameCenterHomeActivity;->notFreeFlowDialogIsShow:Z

    .line 60
    const/4 v0, -0x1

    sput v0, Lcom/youku/gamecenter/GameCenterHomeActivity;->sCurrentFocusFragmentId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/youku/gamecenter/GameBaseActivity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mFids:[I

    .line 73
    new-instance v0, Lcom/youku/gamecenter/data/HomePageInfo;

    invoke-direct {v0}, Lcom/youku/gamecenter/data/HomePageInfo;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mHomePageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

    .line 84
    iput-boolean v1, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mFromShortcut:Z

    .line 86
    iput-boolean v1, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mIsNeedSetOfflineEndPage:Z

    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/GameCenterHomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameCenterHomeActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getData()V

    return-void
.end method

.method static synthetic access$100(Lcom/youku/gamecenter/GameCenterHomeActivity;)Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameCenterHomeActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->myPagerAdapter:Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/gamecenter/GameCenterHomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameCenterHomeActivity;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mIsNeedSetOfflineEndPage:Z

    return v0
.end method

.method static synthetic access$300(Lcom/youku/gamecenter/GameCenterHomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameCenterHomeActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->setGameHomeFragmentEndPage()V

    return-void
.end method

.method private drawTabs(I)V
    .locals 12
    .param p1, "drawWidth"    # I

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x10

    const/4 v9, -0x1

    .line 300
    if-eqz p1, :cond_1

    .line 301
    iput p1, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->width:I

    .line 304
    :goto_0
    const/4 v7, 0x0

    invoke-static {p0, v7}, Lcom/youku/gamecenter/util/SystemUtils;->dip2px(Landroid/content/Context;F)I

    move-result v7

    int-to-float v4, v7

    .line 305
    .local v4, "split":F
    iget v7, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->width:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mHomePageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

    iget-object v8, v8, Lcom/youku/gamecenter/data/HomePageInfo;->tabs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mHomePageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

    iget-object v8, v8, Lcom/youku/gamecenter/data/HomePageInfo;->tabs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    int-to-float v8, v8

    div-float v5, v7, v8

    .line 307
    .local v5, "tabWidth":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v7, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mHomePageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

    iget-object v7, v7, Lcom/youku/gamecenter/data/HomePageInfo;->tabs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 309
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lcom/youku/gamecenter/R$layout;->tab_title_textview:I

    invoke-virtual {v7, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 311
    .local v6, "textView":Landroid/widget/TextView;
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setId(I)V

    .line 312
    iget-object v7, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mHomePageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

    iget-object v7, v7, Lcom/youku/gamecenter/data/HomePageInfo;->tabs:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/gamecenter/data/TabInfo;

    iget-object v7, v7, Lcom/youku/gamecenter/data/TabInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v7, v5

    invoke-direct {v2, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 316
    .local v2, "param":Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 317
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    iget-object v7, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 319
    iget-object v7, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mHomePageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

    iget-object v7, v7, Lcom/youku/gamecenter/data/HomePageInfo;->tabs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v0, v7, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lcom/youku/gamecenter/R$layout;->tav_title_divider_line:I

    invoke-virtual {v7, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 322
    .local v1, "iv":Landroid/widget/ImageView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v3, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 324
    .local v3, "paramDividerLine":Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 325
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    iget-object v7, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 307
    .end local v1    # "iv":Landroid/widget/ImageView;
    .end local v3    # "paramDividerLine":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 303
    .end local v0    # "i":I
    .end local v2    # "param":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "split":F
    .end local v5    # "tabWidth":F
    .end local v6    # "textView":Landroid/widget/TextView;
    :cond_1
    iget-object v7, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    iput v7, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->width:I

    goto/16 :goto_0

    .line 329
    .restart local v0    # "i":I
    .restart local v4    # "split":F
    .restart local v5    # "tabWidth":F
    :cond_2
    return-void
.end method

.method private getData()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 201
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mNoResultImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mNoResultTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->startLoading()V

    .line 204
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mSource:Ljava/lang/String;

    sget v1, Lcom/youku/gamecenter/services/URLContainer;->TYPE_INTERFACE:I

    invoke-direct {p0, v0, v1}, Lcom/youku/gamecenter/GameCenterHomeActivity;->sendTrack(Ljava/lang/String;I)V

    .line 206
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/youku/gamecenter/GameCenterHomeActivity;->fetchGameListByPage(II)V

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mSource:Ljava/lang/String;

    sget v1, Lcom/youku/gamecenter/services/URLContainer;->TYPE_OFFLINE:I

    invoke-direct {p0, v0, v1}, Lcom/youku/gamecenter/GameCenterHomeActivity;->sendTrack(Ljava/lang/String;I)V

    .line 209
    invoke-direct {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->handleOfflineData()V

    goto :goto_0
.end method

.method private getRequestPage()I
    .locals 4

    .prologue
    .line 368
    iget-object v3, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mLinkTo:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getTargetId(Ljava/lang/String;)I

    move-result v2

    .line 370
    .local v2, "shouldBeId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mHomePageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

    iget-object v3, v3, Lcom/youku/gamecenter/data/HomePageInfo;->tabs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 371
    iget-object v3, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mHomePageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

    iget-object v3, v3, Lcom/youku/gamecenter/data/HomePageInfo;->tabs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/TabInfo;

    .line 372
    .local v1, "info":Lcom/youku/gamecenter/data/TabInfo;
    iget v3, v1, Lcom/youku/gamecenter/data/TabInfo;->id:I

    if-ne v2, v3, :cond_0

    .line 377
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/youku/gamecenter/data/TabInfo;
    :goto_1
    return v0

    .line 370
    .restart local v0    # "i":I
    .restart local v1    # "info":Lcom/youku/gamecenter/data/TabInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    .end local v1    # "info":Lcom/youku/gamecenter/data/TabInfo;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getSource(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 164
    iget-boolean v2, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mFromShortcut:Z

    if-eqz v2, :cond_1

    .line 165
    const-string v0, "15"

    .line 181
    :cond_0
    :goto_0
    return-object v0

    .line 168
    :cond_1
    const-string/jumbo v2, "source"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "source":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 174
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_2

    .line 175
    const-string v0, "-1"

    goto :goto_0

    .line 177
    :cond_2
    const-string/jumbo v2, "source"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    const-string v0, "-1"

    goto :goto_0
.end method

.method private getStatisticText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "gametag"    # Ljava/lang/String;

    .prologue
    .line 185
    const-string v0, ""

    .line 186
    .local v0, "statistic":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&gametag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_0
    return-object v0
.end method

.method private getTargetId(Ljava/lang/String;)I
    .locals 2
    .param p1, "linkto"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 382
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return v0

    .line 386
    :cond_1
    const-string v1, "home_page"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 389
    const-string v1, "category_page"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 390
    const/4 v0, 0x2

    goto :goto_0

    .line 392
    :cond_2
    const-string v1, "rank_page"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 393
    const/4 v0, 0x3

    goto :goto_0

    .line 395
    :cond_3
    const-string v1, "extend_page"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private handleOfflineData()V
    .locals 2

    .prologue
    .line 214
    new-instance v0, Lcom/youku/gamecenter/services/GetHomePageOfflineDataService;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/services/GetHomePageOfflineDataService;-><init>(Landroid/content/Context;)V

    .line 216
    .local v0, "service":Lcom/youku/gamecenter/services/GetHomePageOfflineDataService;
    sget-object v1, Lcom/youku/gamecenter/services/GetHomePageService;->HOME_PAGE_OFFLINE_DATA_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/youku/gamecenter/services/GetHomePageOfflineDataService;->loadStringFromTxt(Ljava/lang/String;Lcom/youku/gamecenter/services/GetOfflineDataService$IOfflineServiceListener;)V

    .line 218
    return-void
.end method

.method private initDatas()V
    .locals 1

    .prologue
    .line 194
    new-instance v0, Lcom/youku/gamecenter/outer/HomeDialogHelper;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mHomeDialogHelper:Lcom/youku/gamecenter/outer/HomeDialogHelper;

    .line 195
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mHomeDialogHelper:Lcom/youku/gamecenter/outer/HomeDialogHelper;

    invoke-virtual {v0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->preLoadDatas()V

    .line 197
    invoke-direct {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getData()V

    .line 198
    return-void
.end method

.method private initNoNetworkView()Landroid/view/View;
    .locals 2

    .prologue
    .line 279
    sget v1, Lcom/youku/gamecenter/R$id;->no_net_layout:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameCenterHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 281
    .local v0, "noNetworkView":Landroid/view/View;
    sget v1, Lcom/youku/gamecenter/R$id;->btn_net_setting:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mSetnetBtn:Landroid/view/View;

    .line 282
    iget-object v1, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mSetnetBtn:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    invoke-static {p0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 288
    :cond_0
    return-object v0
.end method

.method private initTrack()V
    .locals 12

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 140
    .local v10, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mSource:Ljava/lang/String;

    .line 141
    if-eqz v10, :cond_0

    .line 142
    invoke-direct {p0, v10}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getSource(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mSource:Ljava/lang/String;

    .line 143
    const-string v0, "GameCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "source: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v11, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mSource:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "packageName"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v0, "title"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "title":Ljava/lang/String;
    const-string/jumbo v0, "url"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "url":Ljava/lang/String;
    const-string v0, "icon"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "icon":Ljava/lang/String;
    const-string/jumbo v0, "version"

    const/4 v6, 0x0

    invoke-virtual {v10, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 150
    .local v5, "version":I
    const-string v0, "gameid"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, "gameid":Ljava/lang/String;
    const-string v0, "gametag"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 152
    .local v9, "gametag":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-direct {p0, v9}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getStatisticText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 154
    .local v8, "statistic":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    move-result-object v0

    iget-object v6, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mSource:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/youku/gamecenter/download/DownloadManager;->startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "icon":Ljava/lang/String;
    .end local v5    # "version":I
    .end local v7    # "gameid":Ljava/lang/String;
    .end local v8    # "statistic":Ljava/lang/String;
    .end local v9    # "gametag":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 255
    sget v1, Lcom/youku/gamecenter/R$id;->layout_tab:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameCenterHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mTabLayout:Landroid/widget/LinearLayout;

    .line 256
    sget v1, Lcom/youku/gamecenter/R$id;->viewpager:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameCenterHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 257
    iget-object v1, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 258
    sget v1, Lcom/youku/gamecenter/R$id;->game_center_home:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameCenterHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 259
    .local v0, "layout":Landroid/widget/RelativeLayout;
    new-instance v1, Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-static {}, Lcom/youku/gamecenter/GameBaseActivity;->isYoukuApp()Z

    move-result v2

    invoke-direct {v1, p0, v0, v2}, Lcom/youku/gamecenter/widgets/LoadingView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Z)V

    iput-object v1, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    .line 260
    sget v1, Lcom/youku/gamecenter/R$id;->tab_wrap_layout:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameCenterHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mTabWraplaLayout:Landroid/widget/RelativeLayout;

    .line 261
    iget-object v1, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mTabWraplaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 262
    sget v1, Lcom/youku/gamecenter/R$id;->iv_no_result:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameCenterHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mNoResultImageView:Landroid/widget/ImageView;

    .line 263
    sget v1, Lcom/youku/gamecenter/R$id;->tv_no_result:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameCenterHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mNoResultTextView:Landroid/widget/TextView;

    .line 264
    iget-object v1, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mNoResultImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/youku/gamecenter/GameCenterHomeActivity$1;

    invoke-direct {v2, p0}, Lcom/youku/gamecenter/GameCenterHomeActivity$1;-><init>(Lcom/youku/gamecenter/GameCenterHomeActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    invoke-direct {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->initNoNetworkView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mNoNetworkTipView:Landroid/view/View;

    .line 273
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$string;->game_title_tudou:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameCenterHomeActivity;->setTitlePageName(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method private isFromShorctcut()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v1

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "source"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "srouce":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    const-string/jumbo v2, "shortcut"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadSavedInstance(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    if-eqz p1, :cond_0

    const-string v0, "fIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "fIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mFids:[I

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "link_to"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "link_to"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mLinkTo:Ljava/lang/String;

    .line 115
    :cond_1
    invoke-direct {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->isFromShorctcut()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mFromShortcut:Z

    .line 120
    :cond_2
    return-void
.end method

.method private registerReceivers()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->registerReceiver(Landroid/content/Context;)V

    .line 510
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->addOnNetworkStateChangeReceiver(Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;)V

    .line 511
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->addOnNetworkStateChangeNoNetworkReceiver(Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkUnavailableListener;)V

    .line 512
    return-void
.end method

.method private saveFragmentIds(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 234
    iget-object v2, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->myPagerAdapter:Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->myPagerAdapter:Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;

    invoke-virtual {v2}, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 235
    iget-object v2, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->myPagerAdapter:Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;

    invoke-virtual {v2}, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->getCount()I

    move-result v2

    new-array v0, v2, [I

    .line 236
    .local v0, "fragmentIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->myPagerAdapter:Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;

    invoke-virtual {v2, v1}, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getId()I

    move-result v2

    aput v2, v0, v1

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    :cond_0
    const-string v2, "fIds"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 241
    .end local v0    # "fragmentIds":[I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private sendClickTrack(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/youku/gamecenter/services/URLContainer;->GAME_PAGE_STATISTICS:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/youku/gamecenter/statistics/GameTrack;->setBaseParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&location_type=0&locationid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 425
    new-instance v0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 427
    .local v0, "statistics":Lcom/youku/gamecenter/statistics/GameStatisticsTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 428
    return-void
.end method

.method private sendTrack(Ljava/lang/String;I)V
    .locals 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "data_type"    # I

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/youku/gamecenter/services/URLContainer;->GAME_HOME_STATISTICS:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/youku/gamecenter/statistics/GameTrack;->setBaseParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, "url":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 548
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&data_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 549
    new-instance v0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 551
    .local v0, "statistics":Lcom/youku/gamecenter/statistics/GameStatisticsTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 552
    return-void
.end method

.method private setGameHomeFragmentEndPage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 594
    const-string v1, "offlineData"

    invoke-virtual {p0, v1, v3}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "home_page_offline_data_end_page"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 597
    .local v0, "saveEndPage":I
    iget-object v1, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->myPagerAdapter:Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;

    iget-object v2, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mHomePageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

    iget v2, v2, Lcom/youku/gamecenter/data/HomePageInfo;->homePageIndex:I

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/fragment/GameHomeFragment;

    invoke-virtual {v1, v0}, Lcom/youku/gamecenter/fragment/GameHomeFragment;->setOfflineDataEndPage(I)V

    .line 599
    return-void
.end method

.method private showFailed()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 477
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    :goto_0
    return-void

    .line 479
    :cond_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->stopLoading()V

    .line 480
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mHomePageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

    iget-object v0, v0, Lcom/youku/gamecenter/data/HomePageInfo;->tabs:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mHomePageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

    iget-object v0, v0, Lcom/youku/gamecenter/data/HomePageInfo;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mNoResultImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mNoResultTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mTabWraplaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 489
    :goto_1
    const-string/jumbo v0, "showFailed  not call tipInstall"

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->logs(Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mTabWraplaLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mNoResultImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mNoResultTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private unRegisterReceivers()V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    if-nez v0, :cond_0

    .line 521
    :goto_0
    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->unRegisterReceiver(Landroid/content/Context;)V

    .line 519
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->removeOnNetworkStateChangeReceiver(Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;)V

    .line 520
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->removeOnNetworkStateChangeNoNetworkReceiver(Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkUnavailableListener;)V

    goto :goto_0
.end method

.method private updateTabs()V
    .locals 6

    .prologue
    .line 332
    const-string v3, "GameCenterHome"

    const-string/jumbo v4, "updateTabs"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v3, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mHomePageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

    iget v0, v3, Lcom/youku/gamecenter/data/HomePageInfo;->homePageIndex:I

    .line 336
    .local v0, "homeIndex":I
    invoke-direct {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getRequestPage()I

    move-result v2

    .line 338
    .local v2, "requestPage":I
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 339
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 340
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {p0, v3}, Lcom/youku/gamecenter/GameCenterHomeActivity;->drawTabs(I)V

    .line 341
    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->updateTabColor(I)V

    .line 342
    new-instance v3, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v3, v4, p0, v5}, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/youku/gamecenter/GameCenterHomeActivity;Landroid/support/v4/view/ViewPager;)V

    iput-object v3, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->myPagerAdapter:Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;

    .line 344
    iget-object v3, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->myPagerAdapter:Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 346
    iget-object v3, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 348
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/youku/gamecenter/GameCenterHomeActivity$2;

    invoke-direct {v4, p0, v0}, Lcom/youku/gamecenter/GameCenterHomeActivity$2;-><init>(Lcom/youku/gamecenter/GameCenterHomeActivity;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    iget-object v3, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mHomePageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

    iget v3, v3, Lcom/youku/gamecenter/data/HomePageInfo;->homePageIndex:I

    if-eq v2, v3, :cond_0

    .line 361
    iget-object v3, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 364
    :cond_0
    return-void
.end method


# virtual methods
.method public fetchGameListByPage(II)V
    .locals 5
    .param p1, "tab"    # I
    .param p2, "page"    # I

    .prologue
    .line 245
    const-string v2, "PlayFlow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getSimpleClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> fetchGameListByPage( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/youku/gamecenter/services/URLContainer;->getGameHomePageUrlByPage(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "homePageUrl":Ljava/lang/String;
    new-instance v1, Lcom/youku/gamecenter/services/GetHomePageService;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/services/GetHomePageService;-><init>(Landroid/content/Context;)V

    .line 250
    .local v1, "service":Lcom/youku/gamecenter/services/GetHomePageService;
    invoke-virtual {v1, v0, p0}, Lcom/youku/gamecenter/services/GetHomePageService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    .line 251
    return-void
.end method

.method getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    const-string/jumbo v0, "\u6e38\u620f\u4e2d\u5fc3"

    return-object v0
.end method

.method protected handleBackButtonPressed()V
    .locals 1

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mFromShortcut:Z

    if-eqz v0, :cond_0

    .line 526
    invoke-static {p0}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchClientHomePage(Landroid/content/Context;)V

    .line 529
    :cond_0
    invoke-super {p0}, Lcom/youku/gamecenter/GameBaseActivity;->handleBackButtonPressed()V

    .line 530
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mSetnetBtn:Landroid/view/View;

    if-ne v0, p1, :cond_1

    .line 405
    invoke-static {p0}, Lcom/youku/gamecenter/util/SystemUtils;->openSystemNetSettingPage(Landroid/content/Context;)V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    iget-boolean v0, v0, Lcom/youku/gamecenter/widgets/LoadingView;->isAniStart:Z

    if-nez v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/youku/gamecenter/statistics/GameAnalytics;->trackPageClick(Landroid/content/Context;II)V

    .line 413
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->updateTabColor(I)V

    .line 414
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->myPagerAdapter:Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/adapter/GameHomeActivityAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/fragment/GameBaseFragment;

    iget v0, v0, Lcom/youku/gamecenter/fragment/GameBaseFragment;->mId:I

    sput v0, Lcom/youku/gamecenter/GameCenterHomeActivity;->sCurrentFocusFragmentId:I

    .line 416
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 417
    sget v0, Lcom/youku/gamecenter/GameCenterHomeActivity;->sCurrentFocusFragmentId:I

    if-lez v0, :cond_0

    .line 418
    sget v0, Lcom/youku/gamecenter/GameCenterHomeActivity;->sCurrentFocusFragmentId:I

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->sendClickTrack(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 534
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 535
    iget-object v1, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 536
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 537
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 539
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/GameCenterHomeActivity;->drawTabs(I)V

    .line 540
    iget-object v1, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameCenterHomeActivity;->updateTabColor(I)V

    .line 541
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    .line 93
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameCenterHomeActivity;->loadSavedInstance(Landroid/os/Bundle;)V

    .line 95
    invoke-direct {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->initTrack()V

    .line 97
    invoke-direct {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->initView()V

    .line 99
    invoke-direct {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->initDatas()V

    .line 101
    invoke-direct {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->registerReceivers()V

    .line 103
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/gamecenter/statistics/OfflineStatistics;->sendStaticstics(Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 494
    invoke-super {p0}, Lcom/youku/gamecenter/GameBaseActivity;->onDestroy()V

    .line 496
    invoke-direct {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->unRegisterReceivers()V

    .line 498
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    .line 499
    const/4 v1, -0x1

    sput v1, Lcom/youku/gamecenter/GameCenterHomeActivity;->sCurrentFocusFragmentId:I

    .line 500
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getToast()Landroid/widget/Toast;

    move-result-object v0

    .line 501
    .local v0, "toast":Landroid/widget/Toast;
    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 503
    const/4 v0, 0x0

    .line 506
    :cond_0
    return-void
.end method

.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 1
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-direct {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->showFailed()V

    .line 453
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->showNetTipsAutomatic()V

    goto :goto_0
.end method

.method public onLoadOfflineDataFinish(Lcom/youku/gamecenter/data/HomePageInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/youku/gamecenter/data/HomePageInfo;

    .prologue
    .line 584
    if-nez p1, :cond_0

    .line 585
    invoke-direct {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->showFailed()V

    .line 586
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->showNetTipsAutomatic()V

    .line 591
    :goto_0
    return-void

    .line 589
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mIsNeedSetOfflineEndPage:Z

    .line 590
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/GameCenterHomeActivity;->onSuccess(Lcom/youku/gamecenter/data/HomePageInfo;)V

    goto :goto_0
.end method

.method public onNetworkAvailable()V
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mNoNetworkTipView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 604
    return-void
.end method

.method public onNetworkUnavailable()V
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mNoNetworkTipView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 609
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 556
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 557
    if-eqz p1, :cond_0

    .line 558
    const-string/jumbo v0, "source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 559
    .local v6, "source":Ljava/lang/String;
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 560
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 561
    .local v2, "title":Ljava/lang/String;
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 562
    .local v3, "url":Ljava/lang/String;
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 563
    .local v4, "icon":Ljava/lang/String;
    const-string/jumbo v0, "version"

    const/4 v8, 0x0

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 564
    .local v5, "version":I
    const-string v0, "gameid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 565
    .local v7, "gameid":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/youku/gamecenter/download/DownloadManager;->startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "icon":Ljava/lang/String;
    .end local v5    # "version":I
    .end local v6    # "source":Ljava/lang/String;
    .end local v7    # "gameid":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 225
    if-eqz p1, :cond_0

    .line 226
    const-string v0, "android:support:fragments"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 229
    :cond_0
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameCenterHomeActivity;->saveFragmentIds(Landroid/os/Bundle;)V

    .line 231
    return-void
.end method

.method public onSuccess(Lcom/youku/gamecenter/data/HomePageInfo;)V
    .locals 2
    .param p1, "homePageInfo"    # Lcom/youku/gamecenter/data/HomePageInfo;

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 462
    :cond_0
    iput-object p1, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mHomePageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

    .line 463
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mHomePageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

    iget-object v0, v0, Lcom/youku/gamecenter/data/HomePageInfo;->tabs:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mHomePageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

    iget-object v0, v0, Lcom/youku/gamecenter/data/HomePageInfo;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mTabWraplaLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mHomeDialogHelper:Lcom/youku/gamecenter/outer/HomeDialogHelper;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->checkAndShowHomePageDialog(Landroid/content/Context;)V

    .line 469
    :goto_1
    invoke-direct {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->updateTabs()V

    .line 470
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->stopLoading()V

    .line 471
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->autoUpdateGame()V

    .line 472
    const-string v0, "onSuccess  call tipInstall"

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->logs(Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mTabWraplaLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public setLayout()V
    .locals 1

    .prologue
    .line 574
    sget v0, Lcom/youku/gamecenter/R$layout;->activity_game_home:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->setContentView(I)V

    .line 575
    return-void
.end method

.method public startLoading()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/LoadingView;->startAnimation()V

    .line 293
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/LoadingView;->stopAnimation()V

    .line 297
    return-void
.end method

.method public updateTabColor(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 432
    const/4 v1, 0x0

    .line 433
    .local v1, "mTagView":Landroid/view/View;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/youku/gamecenter/GameCenterHomeActivity;->mHomePageInfo:Lcom/youku/gamecenter/data/HomePageInfo;

    iget-object v2, v2, Lcom/youku/gamecenter/data/HomePageInfo;->tabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 434
    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameCenterHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 435
    if-eqz v1, :cond_0

    .line 436
    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 437
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 433
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    :cond_1
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/GameCenterHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 441
    if-eqz v1, :cond_2

    .line 442
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 443
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 445
    :cond_2
    return-void
.end method
