.class public Lcom/youku/gamecenter/GameManagerActivity;
.super Lcom/youku/gamecenter/GameBaseActivity;
.source "GameManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/youku/gamecenter/services/GetGamesUpgradationService$OnGameUpgradationServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/GameManagerActivity$GameIcon;,
        Lcom/youku/gamecenter/GameManagerActivity$ImageAsyncTask;
    }
.end annotation


# static fields
.field public static sCurrentFocusFragmentId:I


# instance fields
.field private mDownloadingCountLayout:Landroid/view/View;

.field private mDownloadingCountTextView:Landroid/widget/TextView;

.field private mFromNotificationBar:Z

.field private mFromShortcut:Z

.field private mIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mInstalledCountLayout:Landroid/view/View;

.field private mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

.field private mNeedsUnregisterReceiver:Z

.field private mNoResultImageView:Landroid/widget/ImageView;

.field private mNoResultTextView:Landroid/widget/TextView;

.field private mStartTime:J

.field private mTabSize:I

.field public mTabTitleIds:[I

.field private mTabWraplaLayout:Landroid/widget/RelativeLayout;

.field private mUpgradationCountLayout:Landroid/view/View;

.field private mUpgradationCountTextView:Landroid/widget/TextView;

.field public mViewPager:Landroid/support/v4/view/ViewPager;

.field private myPagerAdapter:Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, -0x1

    sput v0, Lcom/youku/gamecenter/GameManagerActivity;->sCurrentFocusFragmentId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    invoke-direct {p0}, Lcom/youku/gamecenter/GameBaseActivity;-><init>()V

    .line 51
    iput v0, p0, Lcom/youku/gamecenter/GameManagerActivity;->mTabSize:I

    .line 52
    new-array v0, v0, [I

    sget v1, Lcom/youku/gamecenter/R$string;->game_manager_installed:I

    aput v1, v0, v3

    sget v1, Lcom/youku/gamecenter/R$string;->game_manager_downloading:I

    aput v1, v0, v4

    const/4 v1, 0x2

    sget v2, Lcom/youku/gamecenter/R$string;->game_manager_update:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/youku/gamecenter/GameManagerActivity;->mTabTitleIds:[I

    .line 71
    iput-boolean v3, p0, Lcom/youku/gamecenter/GameManagerActivity;->mFromShortcut:Z

    .line 72
    iput-boolean v3, p0, Lcom/youku/gamecenter/GameManagerActivity;->mFromNotificationBar:Z

    .line 74
    iput-boolean v4, p0, Lcom/youku/gamecenter/GameManagerActivity;->mNeedsUnregisterReceiver:Z

    .line 76
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/youku/gamecenter/GameManagerActivity;->mIconCache:Ljava/util/Map;

    .line 78
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/youku/gamecenter/GameManagerActivity;->mStartTime:J

    .line 403
    return-void
.end method

.method private static URLEncoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 523
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 524
    :cond_0
    const-string p0, ""

    .line 532
    .end local p0    # "s":Ljava/lang/String;
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object p0

    .line 526
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    goto :goto_0

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    const-string p0, ""

    goto :goto_0

    .line 529
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 530
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string p0, ""

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/GameManagerActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameManagerActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerActivity;->mIconCache:Ljava/util/Map;

    return-object v0
.end method

.method private getCurrentItemByGameCount()I
    .locals 4

    .prologue
    .line 231
    const-string/jumbo v1, "upgrade"

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "showTab"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    const/4 v1, 0x2

    .line 242
    :goto_0
    return v1

    .line 235
    :cond_0
    sget-object v1, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;->TYPE_UNINSTALLED:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    invoke-static {v1}, Lcom/youku/gamecenter/GameCenterModel;->getGameManagerDataByType(Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 238
    .local v0, "uninstalledSize":I
    if-lez v0, :cond_1

    .line 239
    const/4 v1, 0x1

    goto :goto_0

    .line 242
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCurrentItemByView(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 433
    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mInstalledCountLayout:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 442
    :cond_0
    :goto_0
    return v0

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mDownloadingCountLayout:Landroid/view/View;

    if-ne p1, v1, :cond_2

    .line 437
    const/4 v0, 0x1

    goto :goto_0

    .line 439
    :cond_2
    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mUpgradationCountLayout:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 440
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private goHomePage()V
    .locals 1

    .prologue
    .line 350
    const-string v0, "15"

    invoke-static {p0, v0}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameCenterHomeActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerActivity;->finish()V

    .line 354
    return-void
.end method

.method private initDatas()V
    .locals 2

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->isFromNotificationBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/gamecenter/GameManagerActivity;->mFromNotificationBar:Z

    .line 144
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerActivity;->getScreenWidth()I

    move-result v0

    iput v0, p0, Lcom/youku/gamecenter/GameManagerActivity;->width:I

    .line 146
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0}, Lcom/youku/gamecenter/GameCenterModel;->sortGameManagerData()V

    .line 148
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->loadGameIcons()V

    .line 150
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$string;->game_title_page_name_mygame:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameManagerActivity;->setTitlePageName(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method private initViewPager()V
    .locals 3

    .prologue
    .line 222
    const-string v0, "GameCenterHome"

    const-string v1, "initViewPager"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v0, Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/GameManagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, v1, p0, v2}, Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/youku/gamecenter/GameManagerActivity;Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Lcom/youku/gamecenter/GameManagerActivity;->myPagerAdapter:Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;

    .line 225
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->myPagerAdapter:Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 226
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->updateTabs()V

    .line 227
    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 172
    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mGameManagerLaunchLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 174
    sget v1, Lcom/youku/gamecenter/R$id;->tab_title_downloading_count:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mDownloadingCountTextView:Landroid/widget/TextView;

    .line 175
    sget v1, Lcom/youku/gamecenter/R$id;->tab_title_update_count:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mUpgradationCountTextView:Landroid/widget/TextView;

    .line 177
    sget v1, Lcom/youku/gamecenter/R$id;->tab_title_installed_layout:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mInstalledCountLayout:Landroid/view/View;

    .line 178
    sget v1, Lcom/youku/gamecenter/R$id;->tab_title_downloading_layout:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mDownloadingCountLayout:Landroid/view/View;

    .line 179
    sget v1, Lcom/youku/gamecenter/R$id;->tab_title_update_layout:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mUpgradationCountLayout:Landroid/view/View;

    .line 181
    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mInstalledCountLayout:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mDownloadingCountLayout:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mUpgradationCountLayout:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    sget v1, Lcom/youku/gamecenter/R$id;->viewpager:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 186
    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 187
    sget v1, Lcom/youku/gamecenter/R$id;->game_center_home:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 188
    .local v0, "layout":Landroid/widget/RelativeLayout;
    new-instance v1, Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-static {}, Lcom/youku/gamecenter/GameBaseActivity;->isYoukuApp()Z

    move-result v2

    invoke-direct {v1, p0, v0, v2}, Lcom/youku/gamecenter/widgets/LoadingView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Z)V

    iput-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    .line 189
    sget v1, Lcom/youku/gamecenter/R$id;->tab_wrap_layout:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mTabWraplaLayout:Landroid/widget/RelativeLayout;

    .line 190
    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mTabWraplaLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 191
    sget v1, Lcom/youku/gamecenter/R$id;->iv_no_result:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mNoResultImageView:Landroid/widget/ImageView;

    .line 192
    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mNoResultImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    sget v1, Lcom/youku/gamecenter/R$id;->tv_no_result:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mNoResultTextView:Landroid/widget/TextView;

    .line 194
    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mNoResultTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerActivity;->startLoading()V

    .line 198
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->isNeedLoadUpgradationInfo()Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->trackPageLoad()V

    .line 200
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->setUIData()V

    .line 202
    :cond_0
    return-void
.end method

.method private isFromNotificationBar()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v1

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "source"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "srouce":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    const-string v2, "999"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isFromShorctcut()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 377
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 389
    :cond_0
    :goto_0
    return v1

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "source"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "srouce":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 385
    const-string/jumbo v2, "shortcut"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isGameManagerDataEmpty()Z
    .locals 1

    .prologue
    .line 373
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getGameManagerData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGoHomePage()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 358
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->isFromShorctcut()Z

    move-result v1

    iput-boolean v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mFromShortcut:Z

    .line 360
    iget-boolean v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mFromShortcut:Z

    if-nez v1, :cond_1

    .line 368
    :cond_0
    :goto_0
    return v0

    .line 364
    :cond_1
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->isGameManagerDataEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isNeedLoadUpgradationInfo()Z
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getInstalledGameManagerData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadDatas()V
    .locals 4

    .prologue
    .line 112
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getInstalledGameManagerData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 113
    const-string v2, "loadDatas->load installed data size == 0,   loadDatas return!"

    invoke-virtual {p0, v2}, Lcom/youku/gamecenter/GameManagerActivity;->logs(Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getUpgradationPara()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/gamecenter/services/URLContainer;->getGamesUpgradationUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "upgradationUrl":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Game Upgradation url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/youku/gamecenter/GameManagerActivity;->logs(Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/youku/gamecenter/services/GetGamesUpgradationService;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/services/GetGamesUpgradationService;-><init>(Landroid/content/Context;)V

    .line 122
    .local v0, "service":Lcom/youku/gamecenter/services/GetGamesUpgradationService;
    invoke-virtual {v0, v1, p0}, Lcom/youku/gamecenter/services/GetGamesUpgradationService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    goto :goto_0
.end method

.method private loadGameIcons()V
    .locals 1

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->loadUnCachedIconPathes()Ljava/util/List;

    move-result-object v0

    .line 288
    .local v0, "unCachedIconPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameManagerActivity;->loadGameIconsByPathes(Ljava/util/List;)V

    .line 289
    return-void
.end method

.method private loadGameIconsByPathes(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, "pathes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    new-instance v0, Lcom/youku/gamecenter/GameManagerActivity$ImageAsyncTask;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/GameManagerActivity$ImageAsyncTask;-><init>(Lcom/youku/gamecenter/GameManagerActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/GameManagerActivity$ImageAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private loadUnCachedIconPathes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v3, "unCachedIconPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getGameManagerData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/GameInfo;

    .line 295
    .local v0, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    invoke-virtual {v0}, Lcom/youku/gamecenter/data/GameInfo;->getLogo()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/youku/gamecenter/util/FileUtils;->getIconFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "iconPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadUnCachedIconPathes\ttitle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iconPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/youku/gamecenter/GameManagerActivity;->logs(Ljava/lang/String;)V

    .line 301
    iput-object v2, v0, Lcom/youku/gamecenter/data/GameInfo;->download_apk_icon_path:Ljava/lang/String;

    .line 302
    iget-object v4, p0, Lcom/youku/gamecenter/GameManagerActivity;->mIconCache:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 305
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    .end local v0    # "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    .end local v2    # "iconPath":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private registerReceivers()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/GameManagerActivity;->mNeedsUnregisterReceiver:Z

    .line 127
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->registerReceiver(Landroid/content/Context;)V

    .line 128
    return-void
.end method

.method private sendTrack()V
    .locals 4

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/youku/gamecenter/services/URLContainer;->GAME_PAGE_STATISTICS:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/youku/gamecenter/statistics/GameTrack;->setBaseParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&location_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->isFromShorctcut()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "15"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    new-instance v0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 257
    .local v0, "statistics":Lcom/youku/gamecenter/statistics/GameStatisticsTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 258
    return-void

    .line 253
    .end local v0    # "statistics":Lcom/youku/gamecenter/statistics/GameStatisticsTask;
    :cond_0
    const-string v2, "2"

    goto :goto_0
.end method

.method private setTabGameCount()V
    .locals 9

    .prologue
    const/16 v4, 0x8

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 479
    iget-object v3, p0, Lcom/youku/gamecenter/GameManagerActivity;->mDownloadingCountTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/youku/gamecenter/GameManagerActivity;->mUpgradationCountTextView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 481
    :cond_0
    const-string v3, "GameCenterHome"

    const-string/jumbo v4, "the View is null!!!!!!!!"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :goto_0
    return-void

    .line 485
    :cond_1
    sget v1, Lcom/youku/gamecenter/R$string;->game_manager_game_type_count:I

    .line 487
    .local v1, "originTextResId":I
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getDownloadingGameManagerData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 489
    .local v0, "downloadingCount":I
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getUpgradeGameManagerData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 491
    .local v2, "updateCount":I
    iget-object v3, p0, Lcom/youku/gamecenter/GameManagerActivity;->mDownloadingCountTextView:Landroid/widget/TextView;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {p0, v1, v6}, Lcom/youku/gamecenter/GameManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v3, p0, Lcom/youku/gamecenter/GameManagerActivity;->mUpgradationCountTextView:Landroid/widget/TextView;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {p0, v1, v6}, Lcom/youku/gamecenter/GameManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v6, p0, Lcom/youku/gamecenter/GameManagerActivity;->mDownloadingCountTextView:Landroid/widget/TextView;

    if-nez v0, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    iget-object v3, p0, Lcom/youku/gamecenter/GameManagerActivity;->mUpgradationCountTextView:Landroid/widget/TextView;

    if-nez v2, :cond_3

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v3, v5

    .line 496
    goto :goto_1

    :cond_3
    move v4, v5

    .line 498
    goto :goto_2
.end method

.method private setUIData()V
    .locals 2

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->setTabGameCount()V

    .line 470
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->initViewPager()V

    .line 472
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerActivity;->mTabWraplaLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 474
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerActivity;->stopLoading()V

    .line 475
    return-void
.end method

.method private trackPageLoad()V
    .locals 9

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    :goto_0
    return-void

    .line 462
    :cond_0
    const-string/jumbo v2, "\u6e38\u620f\u7ba1\u7406\u9875\u52a0\u8f7d"

    const-string v3, "gameManageLoad"

    iget-wide v4, p0, Lcom/youku/gamecenter/GameManagerActivity;->mStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v8, "\u6e38\u620f\u7ba1\u7406"

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/youku/gamecenter/statistics/GameAnalytics;->trackPageLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 464
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/youku/gamecenter/GameManagerActivity;->mStartTime:J

    goto :goto_0
.end method

.method private unRegisterReceivers()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-boolean v0, p0, Lcom/youku/gamecenter/GameManagerActivity;->mNeedsUnregisterReceiver:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->unRegisterReceiver(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private updateTabs()V
    .locals 3

    .prologue
    .line 211
    const-string v1, "GameCenterHome"

    const-string v2, "gameManager_updateTabs"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->getCurrentItemByGameCount()I

    move-result v0

    .line 215
    .local v0, "currentItem":I
    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 217
    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameManagerActivity;->updateTabColor(I)V

    .line 219
    return-void
.end method


# virtual methods
.method getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    const-string/jumbo v0, "\u6e38\u620f\u7ba1\u7406"

    return-object v0
.end method

.method public getScreenWidth()I
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 206
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 207
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method

.method protected handleBackButtonPressed()V
    .locals 0

    .prologue
    .line 247
    invoke-super {p0}, Lcom/youku/gamecenter/GameBaseActivity;->handleBackButtonPressed()V

    .line 248
    return-void
.end method

.method public logs(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 414
    const-string v0, "GameCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerActivity;->getSimpleClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameManagerActivity;->getCurrentItemByView(Landroid/view/View;)I

    move-result v0

    .line 426
    .local v0, "currentItem":I
    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 428
    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->myPagerAdapter:Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;

    iget-object v2, p0, Lcom/youku/gamecenter/GameManagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/adapter/GameManagerActivityAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/fragment/GameBaseFragment;

    iget v1, v1, Lcom/youku/gamecenter/fragment/GameBaseFragment;->mId:I

    sput v1, Lcom/youku/gamecenter/GameManagerActivity;->sCurrentFocusFragmentId:I

    .line 430
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    .line 85
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->isGoHomePage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->goHomePage()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/GameManagerActivity;->mNeedsUnregisterReceiver:Z

    .line 104
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/youku/gamecenter/GameManagerActivity;->mStartTime:J

    .line 93
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->sendTrack()V

    .line 95
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->initDatas()V

    .line 97
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->initViews()V

    .line 99
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->isNeedLoadUpgradationInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->loadDatas()V

    .line 103
    :cond_1
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->registerReceivers()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 394
    invoke-super {p0}, Lcom/youku/gamecenter/GameBaseActivity;->onDestroy()V

    .line 396
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->unRegisterReceivers()V

    .line 398
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerActivity;->mIconCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/gamecenter/GameManagerActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    .line 401
    return-void
.end method

.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 0
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->trackPageLoad()V

    .line 448
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->setUIData()V

    .line 449
    return-void
.end method

.method public onGameInfoProgressChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 510
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onGameInfoProgressChanged(Ljava/lang/String;)V

    .line 511
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->setTabGameCount()V

    .line 512
    return-void
.end method

.method public onGameInfoStatusChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 504
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onGameInfoStatusChanged(Ljava/lang/String;)V

    .line 505
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->setTabGameCount()V

    .line 506
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 542
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 543
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/GameManagerActivity;->setIntent(Landroid/content/Intent;)V

    .line 544
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->updateTabs()V

    .line 545
    return-void
.end method

.method public onSuccess(Lcom/youku/gamecenter/data/GameUpgradationInfo;)V
    .locals 0
    .param p1, "gameListInfo"    # Lcom/youku/gamecenter/data/GameUpgradationInfo;

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->trackPageLoad()V

    .line 454
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/GameManagerActivity;->checkGamesUpgradation(Lcom/youku/gamecenter/data/GameUpgradationInfo;)V

    .line 456
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerActivity;->setUIData()V

    .line 457
    return-void
.end method

.method public setLayout()V
    .locals 1

    .prologue
    .line 419
    sget v0, Lcom/youku/gamecenter/R$layout;->activity_game_manager:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameManagerActivity;->setContentView(I)V

    .line 420
    return-void
.end method

.method public startLoading()V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/LoadingView;->startAnimation()V

    .line 516
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/LoadingView;->stopAnimation()V

    .line 520
    return-void
.end method

.method public updateTabColor(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 262
    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mInstalledCountLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 263
    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mDownloadingCountLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 264
    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mUpgradationCountLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 266
    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mInstalledCountLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 267
    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mDownloadingCountLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 268
    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerActivity;->mUpgradationCountLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 270
    const/4 v0, 0x0

    .line 272
    .local v0, "mTagView":Landroid/view/View;
    if-nez p1, :cond_2

    .line 273
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerActivity;->mInstalledCountLayout:Landroid/view/View;

    .line 280
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 282
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 284
    :cond_1
    return-void

    .line 274
    :cond_2
    if-ne p1, v2, :cond_3

    .line 275
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerActivity;->mDownloadingCountLayout:Landroid/view/View;

    goto :goto_0

    .line 276
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerActivity;->mUpgradationCountLayout:Landroid/view/View;

    goto :goto_0
.end method
