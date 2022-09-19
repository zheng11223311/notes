.class public abstract Lcom/youku/gamecenter/GameBaseActivity;
.super Lcom/youku/gamecenter/GameDebugActivity;
.source "GameBaseActivity.java"

# interfaces
.implements Lcom/youku/gamecenter/OnGameInfoChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/GameBaseActivity$MyOnGameUpgradationServiceListener;,
        Lcom/youku/gamecenter/GameBaseActivity$OnActivityLifeCycleChangedListener;
    }
.end annotation


# static fields
.field public static final GAME_CATEGORY_TAB:I = 0x2

.field public static final GAME_EXTEND_TAB:I = 0x4

.field public static final GAME_HOME_TAB:I = 0x1

.field public static final GAME_MANAGER_TAB:I = 0xa

.field public static final GAME_NEWGAME_TAB:I = 0x5

.field public static final GAME_ONLINE_GAME_HOT_TAB:I = 0x17

.field public static final GAME_ONLINE_GAME_NEW_TAB:I = 0x18

.field public static final GAME_ONLINE_GAME_SELECTED_TAB:I = 0x16

.field public static final GAME_RANK_ACTIVITY:I = 0x6

.field public static final GAME_RANK_TAB:I = 0x3

.field public static final GAME_SEARCH_ID:I = 0x0

.field public static final PRESENT_LOCAL_TAB:I = 0x15

.field public static PRESENT_NEW_COUNT:Ljava/lang/String; = null

.field public static final PRESENT_TOTAL_TAB:I = 0x14

.field public static final PRODUCT_ID_TUDOU:I = 0x7

.field public static final PRODUCT_ID_YOUKU:I = 0x6

.field public static final THEME_TYPE_TUDOU:I = 0x1

.field public static final THEME_TYPE_YOUKU:I

.field public static isGameCenterHomeOpened:Z

.field public static isPresentNewShow:Z

.field public static mThemeType:I


# instance fields
.field protected et_search_game:Landroid/widget/EditText;

.field protected gameSearch:Landroid/widget/RelativeLayout;

.field protected mBack:Landroid/widget/ImageView;

.field private mButtomLine:Landroid/view/View;

.field protected mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

.field private mGameManagerHint:Landroid/view/View;

.field protected mGameManagerLaunchLayout:Landroid/view/View;

.field private mGameManagerShownNumber:Landroid/widget/TextView;

.field protected mGamePresent:Landroid/widget/RelativeLayout;

.field private mGamePresentHint:Landroid/view/View;

.field private mGamePresentShownNumber:Landroid/widget/TextView;

.field private mOnActivityLifeCycleChangedListener:Lcom/youku/gamecenter/GameBaseActivity$OnActivityLifeCycleChangedListener;

.field private mProductId:I

.field private mTitleLine:Landroid/widget/LinearLayout;

.field private mTitlePageName:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    sput-boolean v1, Lcom/youku/gamecenter/GameBaseActivity;->isPresentNewShow:Z

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/gamecenter/GameBaseActivity;->PRESENT_NEW_COUNT:Ljava/lang/String;

    .line 97
    sput-boolean v1, Lcom/youku/gamecenter/GameBaseActivity;->isGameCenterHomeOpened:Z

    .line 104
    const/4 v0, 0x1

    sput v0, Lcom/youku/gamecenter/GameBaseActivity;->mThemeType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/youku/gamecenter/GameDebugActivity;-><init>()V

    .line 92
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getInstance()Lcom/youku/gamecenter/GameCenterModel;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    .line 105
    const/4 v0, 0x7

    iput v0, p0, Lcom/youku/gamecenter/GameBaseActivity;->mProductId:I

    .line 605
    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/GameBaseActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameBaseActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->sendClickTrack(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/youku/gamecenter/GameBaseActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameBaseActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity;->mGamePresentHint:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/gamecenter/GameBaseActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameBaseActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity;->mGamePresentShownNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkAndUpdateGameStatus(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 6
    .param p1, "newGameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 542
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getGameManagerData()Ljava/util/List;

    move-result-object v1

    .line 543
    .local v1, "games":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/GameInfo;

    .line 545
    .local v0, "game":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v4, v0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    iget-object v5, p1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 547
    .local v3, "sameApp":Z
    if-eqz v3, :cond_0

    .line 551
    iget v4, v0, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    iget v5, p1, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    if-ge v4, v5, :cond_0

    .line 555
    iget-object v4, v0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v5, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_INSTALLED:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v4, v5, :cond_0

    .line 559
    iget-object v4, p1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    iput-object v4, v0, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    .line 560
    iget-object v4, p1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    iput-object v4, v0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    .line 561
    iget v4, p1, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    iput v4, v0, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    .line 562
    iget-object v4, p1, Lcom/youku/gamecenter/data/GameInfo;->download_link:Ljava/lang/String;

    iput-object v4, v0, Lcom/youku/gamecenter/data/GameInfo;->download_link:Ljava/lang/String;

    .line 563
    iget-object v4, p1, Lcom/youku/gamecenter/data/GameInfo;->version:Ljava/lang/String;

    iput-object v4, v0, Lcom/youku/gamecenter/data/GameInfo;->version:Ljava/lang/String;

    .line 564
    iget-object v4, p1, Lcom/youku/gamecenter/data/GameInfo;->logo:Ljava/lang/String;

    iput-object v4, v0, Lcom/youku/gamecenter/data/GameInfo;->logo:Ljava/lang/String;

    .line 565
    iget-object v4, p1, Lcom/youku/gamecenter/data/GameInfo;->large_icon:Ljava/lang/String;

    iput-object v4, v0, Lcom/youku/gamecenter/data/GameInfo;->large_icon:Ljava/lang/String;

    .line 566
    iget-object v4, p1, Lcom/youku/gamecenter/data/GameInfo;->large_logo:Ljava/lang/String;

    iput-object v4, v0, Lcom/youku/gamecenter/data/GameInfo;->large_logo:Ljava/lang/String;

    .line 567
    iget-object v4, p1, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    iput-object v4, v0, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    .line 568
    const/4 v4, 0x0

    iput v4, v0, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    .line 570
    sget-object v4, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_UPDATEABLE:Lcom/youku/gamecenter/data/GameInfoStatus;

    iput-object v4, v0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    goto :goto_0

    .line 573
    .end local v0    # "game":Lcom/youku/gamecenter/data/GameInfo;
    .end local v3    # "sameApp":Z
    :cond_1
    return-void
.end method

.method public static findNameByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 643
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 645
    .local v4, "manager":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 646
    .local v3, "mainIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 650
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 651
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 652
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 653
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 656
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v5

    .line 650
    .restart local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getNetWorkTipResId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 441
    invoke-static {p0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$string;->game_center_network_failed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 451
    :goto_0
    return-object v0

    .line 446
    :cond_0
    invoke-static {}, Lcom/youku/gamecenter/config/GameCenterProfile;->isTudouProduct()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$string;->game_center_tips_no_network_tudou:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 451
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$string;->game_center_tips_no_network:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initConfiguration()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 259
    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameBaseActivity;->setRequestedOrientation(I)V

    .line 261
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameBaseActivity;->hasTitleBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameBaseActivity;->requestWindowFeature(I)Z

    .line 267
    :goto_0
    sput-boolean v1, Lcom/youku/gamecenter/GameBaseActivity;->isGameCenterHomeOpened:Z

    .line 269
    invoke-direct {p0}, Lcom/youku/gamecenter/GameBaseActivity;->initConfigurationByTheme()V

    .line 271
    invoke-direct {p0}, Lcom/youku/gamecenter/GameBaseActivity;->initProfile()V

    .line 273
    return-void

    .line 264
    :cond_0
    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameBaseActivity;->requestWindowFeature(I)Z

    goto :goto_0
.end method

.method private initConfigurationByTheme()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 277
    :try_start_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameBaseActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme:[I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 279
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gameCenterThemeType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    sput v1, Lcom/youku/gamecenter/GameBaseActivity;->mThemeType:I

    .line 282
    sget v1, Lcom/youku/gamecenter/R$styleable;->GameCenterTheme_gameCenterProductId:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->mProductId:I

    .line 285
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :goto_0
    iget v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->mProductId:I

    sput v1, Lcom/youku/gamecenter/config/GameCenterProfile;->PRODUCT_ID:I

    .line 290
    iget v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->mProductId:I

    sput v1, Lcom/youku/gamecenter/services/URLContainer;->PRODUCT_ID:I

    .line 291
    sget v1, Lcom/youku/gamecenter/services/URLContainer;->PRODUCT_ID:I

    if-ne v1, v4, :cond_0

    .line 292
    sput-boolean v4, Lcom/youku/gamecenter/statistics/GameAnalytics;->isOpen:Z

    .line 295
    :goto_1
    return-void

    .line 294
    :cond_0
    sput-boolean v3, Lcom/youku/gamecenter/statistics/GameAnalytics;->isOpen:Z

    goto :goto_1

    .line 286
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initListeners()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->addOnGameInfoChangedListener(Lcom/youku/gamecenter/OnGameInfoChangedListener;)V

    .line 132
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameBaseActivity;->setActivityLifeCycleChangedListener(Lcom/youku/gamecenter/GameBaseActivity$OnActivityLifeCycleChangedListener;)V

    .line 133
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity;->mOnActivityLifeCycleChangedListener:Lcom/youku/gamecenter/GameBaseActivity$OnActivityLifeCycleChangedListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/GameBaseActivity$OnActivityLifeCycleChangedListener;->onActivityCreated()V

    .line 134
    return-void
.end method

.method private initProfile()V
    .locals 6

    .prologue
    .line 300
    :try_start_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameBaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameBaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .local v2, "versionName":Ljava/lang/String;
    :goto_0
    sget-object v3, Lcom/baseproject/utils/Profile;->User_Agent:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 306
    invoke-static {p0}, Lcom/baseproject/utils/UIUtils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "Youku HD;"

    .line 307
    .local v1, "plant":Ljava/lang/String;
    :goto_1
    const-string v3, "player"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";Android;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/baseproject/utils/Profile;->initProfile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 313
    .end local v1    # "plant":Ljava/lang/String;
    :cond_0
    return-void

    .line 302
    .end local v2    # "versionName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "3.5"

    .restart local v2    # "versionName":Ljava/lang/String;
    goto :goto_0

    .line 306
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string v1, "Youku;"

    goto :goto_1
.end method

.method public static isYoukuApp()Z
    .locals 1

    .prologue
    .line 660
    sget v0, Lcom/youku/gamecenter/GameBaseActivity;->mThemeType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private preloadDatas()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/GameCenterModel;->loadLocalPackages(Landroid/content/Context;)V

    .line 128
    return-void
.end method

.method private sendClickTrack(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 382
    sget-object v2, Lcom/youku/gamecenter/services/URLContainer;->GAME_PAGE_STATISTICS:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/youku/gamecenter/statistics/GameTrack;->setBaseParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&location_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 385
    new-instance v0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;

    invoke-direct {v0, v1, p0}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 386
    .local v0, "statistics":Lcom/youku/gamecenter/statistics/GameStatisticsTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 387
    return-void
.end method

.method private setPresentNewCount()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 317
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameBaseActivity;->hasTitleBar()Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    :goto_0
    return-void

    .line 321
    :cond_0
    sget-boolean v1, Lcom/youku/gamecenter/GameBaseActivity;->isPresentNewShow:Z

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->mGamePresentHint:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 326
    :cond_1
    sget-object v1, Lcom/youku/gamecenter/GameBaseActivity;->PRESENT_NEW_COUNT:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 327
    iget-object v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->mGamePresentHint:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->mGamePresentShownNumber:Landroid/widget/TextView;

    sget-object v2, Lcom/youku/gamecenter/GameBaseActivity;->PRESENT_NEW_COUNT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 332
    :cond_2
    new-instance v0, Lcom/youku/gamecenter/services/GetPresentCodeOrCountService;

    invoke-direct {v0, p0, v2}, Lcom/youku/gamecenter/services/GetPresentCodeOrCountService;-><init>(Landroid/content/Context;Z)V

    .line 334
    .local v0, "service":Lcom/youku/gamecenter/services/GetPresentCodeOrCountService;
    invoke-static {}, Lcom/youku/gamecenter/services/URLContainer;->getPresentNewCount()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/youku/gamecenter/GameBaseActivity$5;

    invoke-direct {v2, p0}, Lcom/youku/gamecenter/GameBaseActivity$5;-><init>(Lcom/youku/gamecenter/GameBaseActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/gamecenter/services/GetPresentCodeOrCountService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    goto :goto_0
.end method

.method private setTitleBar()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameBaseActivity;->hasTitleBar()Z

    move-result v1

    if-nez v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x7

    sget v3, Lcom/youku/gamecenter/R$layout;->layout_game_actionbar_tudou:I

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 145
    sget v1, Lcom/youku/gamecenter/R$id;->title_page_name:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->mTitlePageName:Landroid/widget/TextView;

    .line 146
    sget v1, Lcom/youku/gamecenter/R$id;->title_page_line:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->mTitleLine:Landroid/widget/LinearLayout;

    .line 148
    sget v1, Lcom/youku/gamecenter/R$id;->et_search_game:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->et_search_game:Landroid/widget/EditText;

    .line 149
    sget v1, Lcom/youku/gamecenter/R$id;->title_icon:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->mBack:Landroid/widget/ImageView;

    .line 150
    iget-object v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->mBack:Landroid/widget/ImageView;

    new-instance v2, Lcom/youku/gamecenter/GameBaseActivity$1;

    invoke-direct {v2, p0}, Lcom/youku/gamecenter/GameBaseActivity$1;-><init>(Lcom/youku/gamecenter/GameBaseActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    sget v1, Lcom/youku/gamecenter/R$id;->game_manager_entry:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 159
    .local v0, "gameManagerEntry":Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 160
    sget v1, Lcom/youku/gamecenter/R$id;->game_manager_hint:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->mGameManagerHint:Landroid/view/View;

    .line 161
    sget v1, Lcom/youku/gamecenter/R$id;->unfinish_task_number:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->mGameManagerShownNumber:Landroid/widget/TextView;

    .line 162
    sget v1, Lcom/youku/gamecenter/R$id;->game_manager_entry:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->mGameManagerLaunchLayout:Landroid/view/View;

    .line 163
    iget-object v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->mGameManagerLaunchLayout:Landroid/view/View;

    new-instance v2, Lcom/youku/gamecenter/GameBaseActivity$2;

    invoke-direct {v2, p0}, Lcom/youku/gamecenter/GameBaseActivity$2;-><init>(Lcom/youku/gamecenter/GameBaseActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    sget v1, Lcom/youku/gamecenter/R$id;->game_present:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->mGamePresent:Landroid/widget/RelativeLayout;

    .line 176
    iget-object v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->mGamePresent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 177
    sget v1, Lcom/youku/gamecenter/R$id;->game_present_hint:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->mGamePresentHint:Landroid/view/View;

    .line 178
    sget v1, Lcom/youku/gamecenter/R$id;->present_unfinish_task_number:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->mGamePresentShownNumber:Landroid/widget/TextView;

    .line 179
    iget-object v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->mGamePresent:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/youku/gamecenter/GameBaseActivity$3;

    invoke-direct {v2, p0}, Lcom/youku/gamecenter/GameBaseActivity$3;-><init>(Lcom/youku/gamecenter/GameBaseActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    sget v1, Lcom/youku/gamecenter/R$id;->btn_game_search:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->gameSearch:Landroid/widget/RelativeLayout;

    .line 192
    iget-object v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->gameSearch:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 193
    iget-object v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->gameSearch:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/youku/gamecenter/GameBaseActivity$4;

    invoke-direct {v2, p0}, Lcom/youku/gamecenter/GameBaseActivity$4;-><init>(Lcom/youku/gamecenter/GameBaseActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    sget v1, Lcom/youku/gamecenter/R$id;->title_name:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 204
    sget v1, Lcom/youku/gamecenter/R$id;->gamecenter_actionbar_bottom_line:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->mButtomLine:Landroid/view/View;

    .line 205
    sget v1, Lcom/youku/gamecenter/GameBaseActivity;->mThemeType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 206
    iget-object v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->mButtomLine:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateUnfinishedTaskNumber()V
    .locals 4

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameBaseActivity;->hasTitleBar()Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v1}, Lcom/youku/gamecenter/GameCenterModel;->getUnfinishedTaskNumber()I

    move-result v0

    .line 371
    .local v0, "number":I
    if-lez v0, :cond_1

    .line 372
    iget-object v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->mGameManagerHint:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->mGameManagerShownNumber:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :goto_1
    const-string/jumbo v1, "songxl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shownNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/GameBaseActivity;->mGameManagerHint:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected autoUpdateGame()V
    .locals 5

    .prologue
    .line 578
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getInstalledGameManagerData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getUpgradeGameManagerData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 580
    const-string v2, "loadDatas->load installed data size == 0,   loadDatas return!"

    invoke-virtual {p0, v2}, Lcom/youku/gamecenter/GameBaseActivity;->logs(Ljava/lang/String;)V

    .line 603
    :goto_0
    return-void

    .line 585
    :cond_0
    invoke-static {p0}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/youku/gamecenter/download/DownloadManager;->getSilentInfosFromSQL(IZ)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 590
    const-string v2, "exist auto-update game"

    invoke-virtual {p0, v2}, Lcom/youku/gamecenter/GameBaseActivity;->logs(Ljava/lang/String;)V

    goto :goto_0

    .line 595
    :cond_1
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getUpgradationPara()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/gamecenter/services/URLContainer;->getGamesUpgradationUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 597
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

    invoke-virtual {p0, v2}, Lcom/youku/gamecenter/GameBaseActivity;->logs(Ljava/lang/String;)V

    .line 598
    new-instance v0, Lcom/youku/gamecenter/services/GetGamesUpgradationService;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/services/GetGamesUpgradationService;-><init>(Landroid/content/Context;)V

    .line 600
    .local v0, "service":Lcom/youku/gamecenter/services/GetGamesUpgradationService;
    new-instance v2, Lcom/youku/gamecenter/GameBaseActivity$MyOnGameUpgradationServiceListener;

    invoke-direct {v2, p0}, Lcom/youku/gamecenter/GameBaseActivity$MyOnGameUpgradationServiceListener;-><init>(Lcom/youku/gamecenter/GameBaseActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/gamecenter/services/GetGamesUpgradationService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    goto :goto_0
.end method

.method protected checkAndLaunchSearchPage()V
    .locals 5

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "gc_navigate|gc_search"

    const-string/jumbo v3, "\u641c\u7d22\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v4, "\u5bfc\u822a\u680f"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/youku/gamecenter/statistics/GameAnalytics;->trackCustomClick(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameBaseActivity;->showNetTipsAutomatic()V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-static {p0}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameSearchActivity(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected checkGamesUpgradation(Lcom/youku/gamecenter/data/GameUpgradationInfo;)V
    .locals 3
    .param p1, "gameListInfo"    # Lcom/youku/gamecenter/data/GameUpgradationInfo;

    .prologue
    .line 535
    iget-object v2, p1, Lcom/youku/gamecenter/data/GameUpgradationInfo;->games:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 536
    .local v1, "newGameInfo":Lcom/youku/gamecenter/data/GameInfo;
    invoke-direct {p0, v1}, Lcom/youku/gamecenter/GameBaseActivity;->checkAndUpdateGameStatus(Lcom/youku/gamecenter/data/GameInfo;)V

    goto :goto_0

    .line 538
    .end local v1    # "newGameInfo":Lcom/youku/gamecenter/data/GameInfo;
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 457
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 458
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 460
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameBaseActivity;->hasTitleBar()Z

    move-result v2

    if-nez v2, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameBaseActivity;->onBackPressed()V

    .line 462
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameDebugActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 473
    :goto_0
    return v2

    .line 464
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/GameBaseActivity;->et_search_game:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "searchword":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 466
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 467
    .local v0, "searchData":Landroid/content/Intent;
    const-string/jumbo v2, "searchword"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    const/16 v2, 0xa

    invoke-virtual {p0, v2, v0}, Lcom/youku/gamecenter/GameBaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 470
    .end local v0    # "searchData":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameBaseActivity;->onBackPressed()V

    .line 473
    .end local v1    # "searchword":Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameDebugActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method abstract getPageName()Ljava/lang/String;
.end method

.method public getToast()Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method protected handleBackButtonPressed()V
    .locals 0

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameBaseActivity;->onBackPressed()V

    .line 243
    return-void
.end method

.method protected handleSearchKeyPressed()V
    .locals 0

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameBaseActivity;->checkAndLaunchSearchPage()V

    .line 239
    return-void
.end method

.method public hasTitleBar()Z
    .locals 1

    .prologue
    .line 664
    const/4 v0, 0x1

    return v0
.end method

.method public isGameOnboard(Lcom/youku/gamecenter/data/GameInfo;)Z
    .locals 4
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 412
    if-nez p1, :cond_1

    .line 424
    :cond_0
    :goto_0
    return v0

    .line 416
    :cond_1
    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->on_board:Ljava/lang/String;

    if-nez v2, :cond_2

    move v0, v1

    .line 418
    goto :goto_0

    .line 421
    :cond_2
    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->on_board:Ljava/lang/String;

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 424
    goto :goto_0
.end method

.method protected isShowTitle()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameDebugActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const-string v0, "Pig00"

    const-string/jumbo v1, "test my local change 9-23 6:20"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lcom/youku/gamecenter/GameBaseActivity;->initConfiguration()V

    .line 114
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameBaseActivity;->setLayout()V

    .line 116
    invoke-direct {p0}, Lcom/youku/gamecenter/GameBaseActivity;->setTitleBar()V

    .line 118
    invoke-direct {p0}, Lcom/youku/gamecenter/GameBaseActivity;->initListeners()V

    .line 120
    invoke-direct {p0}, Lcom/youku/gamecenter/GameBaseActivity;->preloadDatas()V

    .line 122
    invoke-direct {p0}, Lcom/youku/gamecenter/GameBaseActivity;->updateUnfinishedTaskNumber()V

    .line 124
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 249
    invoke-super {p0}, Lcom/youku/gamecenter/GameDebugActivity;->onDestroy()V

    .line 251
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity;->mOnActivityLifeCycleChangedListener:Lcom/youku/gamecenter/GameBaseActivity$OnActivityLifeCycleChangedListener;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/youku/gamecenter/GameBaseActivity$OnActivityLifeCycleChangedListener;->onActivityDestroyed(Landroid/content/Context;)V

    .line 253
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->removeOnGameInfoChangedListener(Lcom/youku/gamecenter/OnGameInfoChangedListener;)V

    .line 255
    return-void
.end method

.method public onGameInfoProgressChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 401
    return-void
.end method

.method public onGameInfoStatusChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/youku/gamecenter/GameBaseActivity;->updateUnfinishedTaskNumber()V

    .line 397
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 228
    const/16 v0, 0x54

    if-eq p1, v0, :cond_0

    .line 229
    invoke-super {p0, p1, p2}, Lcom/youku/gamecenter/GameDebugActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 234
    :goto_0
    return v0

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameBaseActivity;->handleSearchKeyPressed()V

    .line 234
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 499
    invoke-super {p0}, Lcom/youku/gamecenter/GameDebugActivity;->onPause()V

    .line 500
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/youku/gamecenter/statistics/GameAnalytics;->endSession(Landroid/app/Activity;Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 492
    invoke-super {p0}, Lcom/youku/gamecenter/GameDebugActivity;->onResume()V

    .line 493
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameBaseActivity;->getPageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/youku/gamecenter/statistics/GameAnalytics;->startSession(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-direct {p0}, Lcom/youku/gamecenter/GameBaseActivity;->setPresentNewCount()V

    .line 495
    return-void
.end method

.method protected refreshPresentNewCount()V
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x1

    sput-boolean v0, Lcom/youku/gamecenter/GameBaseActivity;->isPresentNewShow:Z

    .line 506
    invoke-direct {p0}, Lcom/youku/gamecenter/GameBaseActivity;->setPresentNewCount()V

    .line 507
    return-void
.end method

.method public setActivityLifeCycleChangedListener(Lcom/youku/gamecenter/GameBaseActivity$OnActivityLifeCycleChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/gamecenter/GameBaseActivity$OnActivityLifeCycleChangedListener;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/youku/gamecenter/GameBaseActivity;->mOnActivityLifeCycleChangedListener:Lcom/youku/gamecenter/GameBaseActivity$OnActivityLifeCycleChangedListener;

    .line 479
    return-void
.end method

.method public abstract setLayout()V
.end method

.method protected setTitlePageName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 516
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity;->mTitlePageName:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 531
    :goto_0
    return-void

    .line 520
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity;->mTitleLine:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity;->mTitlePageName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity;->mTitleLine:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity;->mTitlePageName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity;->mTitlePageName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showGameUnBoard()V
    .locals 2

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$string;->on_no_board:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameBaseActivity;->showNetTips(Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public showNetTips(Ljava/lang/String;)V
    .locals 1
    .param p1, "tips"    # Ljava/lang/String;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 435
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity;->mToast:Landroid/widget/Toast;

    .line 436
    iget-object v0, p0, Lcom/youku/gamecenter/GameBaseActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 437
    return-void
.end method

.method public showNetTipsAutomatic()V
    .locals 1

    .prologue
    .line 428
    invoke-static {p0}, Lcom/youku/gamecenter/GameBaseActivity;->getNetWorkTipResId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameBaseActivity;->showNetTips(Ljava/lang/String;)V

    .line 429
    return-void
.end method
