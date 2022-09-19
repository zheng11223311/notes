.class public Lcom/youku/gamecenter/GameSearchActivity;
.super Lcom/youku/gamecenter/GameBaseActivity;
.source "GameSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;
.implements Lcom/youku/gamecenter/services/GetHotSearchGameService$OnHotSearchGameServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/GameSearchActivity$MoreMenuClickListener;
    }
.end annotation


# static fields
.field private static time1:J


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private gamecenter_group:Landroid/widget/RelativeLayout;

.field private gamecenter_group_linear:Landroid/widget/LinearLayout;

.field goSearchIntent:Landroid/content/Intent;

.field private hotgames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private hotgames_layout:Landroid/widget/RelativeLayout;

.field private hotwords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/SearchKeywordsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private hotwords_layout:Landroid/widget/RelativeLayout;

.field private iv_gameicons_01:Landroid/widget/ImageView;

.field private iv_gameicons_02:Landroid/widget/ImageView;

.field private iv_gameicons_03:Landroid/widget/ImageView;

.field private iv_gameicons_04:Landroid/widget/ImageView;

.field private iv_gameicons_05:Landroid/widget/ImageView;

.field private iv_gameicons_06:Landroid/widget/ImageView;

.field private iv_gameicons_07:Landroid/widget/ImageView;

.field private iv_gameicons_08:Landroid/widget/ImageView;

.field private iv_no_result:Landroid/widget/ImageView;

.field private ivs_gameicons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private keywords_limit:I

.field private ll_hot_games_01:Landroid/widget/LinearLayout;

.field private ll_hot_games_02:Landroid/widget/LinearLayout;

.field private ll_hot_games_03:Landroid/widget/LinearLayout;

.field private ll_hot_games_04:Landroid/widget/LinearLayout;

.field private ll_hot_games_05:Landroid/widget/LinearLayout;

.field private ll_hot_games_06:Landroid/widget/LinearLayout;

.field private ll_hot_games_07:Landroid/widget/LinearLayout;

.field private ll_hot_games_08:Landroid/widget/LinearLayout;

.field private lls_hotgames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

.field private mMoreMenuClickListener_01:Lcom/youku/gamecenter/GameSearchActivity$MoreMenuClickListener;

.field private mMoreMenuClickListener_02:Lcom/youku/gamecenter/GameSearchActivity$MoreMenuClickListener;

.field private mStartTime:J

.field private menu:Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;

.field private more_01:Landroid/view/View;

.field private more_02:Landroid/view/View;

.field private no_result_layout:Landroid/widget/RelativeLayout;

.field private onKeyListener:Landroid/view/View$OnKeyListener;

.field private place:Ljava/lang/String;

.field private places:[Ljava/lang/String;

.field private preferences:Landroid/content/SharedPreferences;

.field private tv_gamewords_01:Landroid/widget/TextView;

.field private tv_gamewords_02:Landroid/widget/TextView;

.field private tv_gamewords_03:Landroid/widget/TextView;

.field private tv_gamewords_04:Landroid/widget/TextView;

.field private tv_gamewords_05:Landroid/widget/TextView;

.field private tv_gamewords_06:Landroid/widget/TextView;

.field private tv_gamewords_07:Landroid/widget/TextView;

.field private tv_gamewords_08:Landroid/widget/TextView;

.field private tv_hotwords_01:Landroid/widget/TextView;

.field private tv_hotwords_02:Landroid/widget/TextView;

.field private tv_hotwords_03:Landroid/widget/TextView;

.field private tv_hotwords_04:Landroid/widget/TextView;

.field private tv_hotwords_05:Landroid/widget/TextView;

.field private tv_hotwords_06:Landroid/widget/TextView;

.field private tv_no_result:Landroid/widget/TextView;

.field private tvs_gamewords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private tvs_hotwords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private view_layout_games:Landroid/view/View;

.field private view_layout_words:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 324
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/youku/gamecenter/GameSearchActivity;->time1:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/youku/gamecenter/GameBaseActivity;-><init>()V

    .line 64
    const/16 v0, 0x14

    iput v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->keywords_limit:I

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->tvs_hotwords:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->hotwords:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->tvs_gamewords:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->ivs_gameicons:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->hotgames:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->lls_hotgames:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Lcom/youku/gamecenter/GameSearchActivity$MoreMenuClickListener;

    invoke-direct {v0, p0, v1}, Lcom/youku/gamecenter/GameSearchActivity$MoreMenuClickListener;-><init>(Lcom/youku/gamecenter/GameSearchActivity;Lcom/youku/gamecenter/GameSearchActivity$1;)V

    iput-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->mMoreMenuClickListener_01:Lcom/youku/gamecenter/GameSearchActivity$MoreMenuClickListener;

    .line 84
    new-instance v0, Lcom/youku/gamecenter/GameSearchActivity$MoreMenuClickListener;

    invoke-direct {v0, p0, v1}, Lcom/youku/gamecenter/GameSearchActivity$MoreMenuClickListener;-><init>(Lcom/youku/gamecenter/GameSearchActivity;Lcom/youku/gamecenter/GameSearchActivity$1;)V

    iput-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->mMoreMenuClickListener_02:Lcom/youku/gamecenter/GameSearchActivity$MoreMenuClickListener;

    .line 93
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->mStartTime:J

    .line 355
    new-instance v0, Lcom/youku/gamecenter/GameSearchActivity$3;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/GameSearchActivity$3;-><init>(Lcom/youku/gamecenter/GameSearchActivity;)V

    iput-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->onKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$100(Lcom/youku/gamecenter/GameSearchActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameSearchActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/gamecenter/GameSearchActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameSearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameSearchActivity;->goSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/youku/gamecenter/GameSearchActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/GameSearchActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameSearchActivity;->showPopupMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/youku/gamecenter/GameSearchActivity;)Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameSearchActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->menu:Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;

    return-object v0
.end method

.method static synthetic access$500()J
    .locals 2

    .prologue
    .line 47
    sget-wide v0, Lcom/youku/gamecenter/GameSearchActivity;->time1:J

    return-wide v0
.end method

.method static synthetic access$502(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 47
    sput-wide p0, Lcom/youku/gamecenter/GameSearchActivity;->time1:J

    return-wide p0
.end method

.method private getKeyWords()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 370
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v2}, Lcom/youku/gamecenter/widgets/LoadingView;->startAnimation()V

    .line 373
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->iv_no_result:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 374
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_no_result:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    iget v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->keywords_limit:I

    invoke-static {v2}, Lcom/youku/gamecenter/services/URLContainer;->getSearchKeyWords(I)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "getHotSearchGameUrl":Ljava/lang/String;
    new-instance v0, Lcom/youku/gamecenter/services/GetHotSearchGameService;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/services/GetHotSearchGameService;-><init>(Landroid/content/Context;)V

    .line 380
    .local v0, "getHotSearchGameService":Lcom/youku/gamecenter/services/GetHotSearchGameService;
    invoke-virtual {v0, v1, p0}, Lcom/youku/gamecenter/services/GetHotSearchGameService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    .line 385
    .end local v0    # "getHotSearchGameService":Lcom/youku/gamecenter/services/GetHotSearchGameService;
    .end local v1    # "getHotSearchGameUrl":Ljava/lang/String;
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameSearchActivity;->showNetTipsAutomatic()V

    goto :goto_0
.end method

.method private goSearch(Ljava/lang/String;)V
    .locals 3
    .param p1, "searchWord"    # Ljava/lang/String;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameSearchActivity;->showNetTipsAutomatic()V

    .line 460
    :goto_0
    return-void

    .line 457
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/youku/gamecenter/GameSearchResultActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->goSearchIntent:Landroid/content/Intent;

    .line 458
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->goSearchIntent:Landroid/content/Intent;

    const-string/jumbo v1, "searchWord"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->goSearchIntent:Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private handleSearchRequest()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 501
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->et_search_game:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "searchWord":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 503
    new-instance v1, Landroid/widget/Toast;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 504
    .local v1, "toast":Landroid/widget/Toast;
    const/16 v2, 0x33

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 505
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->mContext:Landroid/content/Context;

    sget v3, Lcom/youku/gamecenter/R$string;->search_keyword_empty:I

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 510
    .end local v1    # "toast":Landroid/widget/Toast;
    :goto_0
    return-void

    .line 508
    :cond_0
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameSearchActivity;->goSearch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 108
    iput-object p0, p0, Lcom/youku/gamecenter/GameSearchActivity;->mContext:Landroid/content/Context;

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->mStartTime:J

    .line 110
    const-string v0, "place"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->preferences:Landroid/content/SharedPreferences;

    .line 111
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "place"

    const-string v2, "everyoneSearched,hotGames"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->place:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 113
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 127
    sget v1, Lcom/youku/gamecenter/R$id;->gamecenter_group_container:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->gamecenter_group:Landroid/widget/RelativeLayout;

    .line 128
    sget v1, Lcom/youku/gamecenter/R$id;->gamecenter_group_linear:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->gamecenter_group_linear:Landroid/widget/LinearLayout;

    .line 131
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 132
    .local v0, "inflate":Landroid/view/LayoutInflater;
    sget v1, Lcom/youku/gamecenter/R$layout;->activity_game_search_words:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->view_layout_words:Landroid/view/View;

    .line 134
    sget v1, Lcom/youku/gamecenter/R$layout;->activity_game_search_games:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->view_layout_games:Landroid/view/View;

    .line 136
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->place:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->addViewPlace(Ljava/lang/String;)V

    .line 139
    sget v1, Lcom/youku/gamecenter/R$id;->hot_words:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->hotwords_layout:Landroid/widget/RelativeLayout;

    .line 140
    sget v1, Lcom/youku/gamecenter/R$id;->hot_games:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->hotgames_layout:Landroid/widget/RelativeLayout;

    .line 142
    new-instance v1, Lcom/youku/gamecenter/widgets/LoadingView;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->gamecenter_group:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/youku/gamecenter/GameBaseActivity;->isYoukuApp()Z

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/youku/gamecenter/widgets/LoadingView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Z)V

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    .line 145
    sget v1, Lcom/youku/gamecenter/R$id;->hot_words_01:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_hotwords_01:Landroid/widget/TextView;

    .line 146
    sget v1, Lcom/youku/gamecenter/R$id;->hot_words_02:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_hotwords_02:Landroid/widget/TextView;

    .line 147
    sget v1, Lcom/youku/gamecenter/R$id;->hot_words_03:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_hotwords_03:Landroid/widget/TextView;

    .line 148
    sget v1, Lcom/youku/gamecenter/R$id;->hot_words_04:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_hotwords_04:Landroid/widget/TextView;

    .line 149
    sget v1, Lcom/youku/gamecenter/R$id;->hot_words_05:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_hotwords_05:Landroid/widget/TextView;

    .line 150
    sget v1, Lcom/youku/gamecenter/R$id;->hot_words_06:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_hotwords_06:Landroid/widget/TextView;

    .line 152
    sget v1, Lcom/youku/gamecenter/R$id;->hot_games_words_01:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_gamewords_01:Landroid/widget/TextView;

    .line 153
    sget v1, Lcom/youku/gamecenter/R$id;->hot_games_words_02:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_gamewords_02:Landroid/widget/TextView;

    .line 154
    sget v1, Lcom/youku/gamecenter/R$id;->hot_games_words_03:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_gamewords_03:Landroid/widget/TextView;

    .line 155
    sget v1, Lcom/youku/gamecenter/R$id;->hot_games_words_04:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_gamewords_04:Landroid/widget/TextView;

    .line 156
    sget v1, Lcom/youku/gamecenter/R$id;->hot_games_words_05:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_gamewords_05:Landroid/widget/TextView;

    .line 157
    sget v1, Lcom/youku/gamecenter/R$id;->hot_games_words_06:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_gamewords_06:Landroid/widget/TextView;

    .line 158
    sget v1, Lcom/youku/gamecenter/R$id;->hot_games_words_07:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_gamewords_07:Landroid/widget/TextView;

    .line 159
    sget v1, Lcom/youku/gamecenter/R$id;->hot_games_words_08:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_gamewords_08:Landroid/widget/TextView;

    .line 160
    sget v1, Lcom/youku/gamecenter/R$id;->hot_games_icons_01:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->iv_gameicons_01:Landroid/widget/ImageView;

    .line 161
    sget v1, Lcom/youku/gamecenter/R$id;->hot_games_icons_02:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->iv_gameicons_02:Landroid/widget/ImageView;

    .line 162
    sget v1, Lcom/youku/gamecenter/R$id;->hot_games_icons_03:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->iv_gameicons_03:Landroid/widget/ImageView;

    .line 163
    sget v1, Lcom/youku/gamecenter/R$id;->hot_games_icons_04:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->iv_gameicons_04:Landroid/widget/ImageView;

    .line 164
    sget v1, Lcom/youku/gamecenter/R$id;->hot_games_icons_05:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->iv_gameicons_05:Landroid/widget/ImageView;

    .line 165
    sget v1, Lcom/youku/gamecenter/R$id;->hot_games_icons_06:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->iv_gameicons_06:Landroid/widget/ImageView;

    .line 166
    sget v1, Lcom/youku/gamecenter/R$id;->hot_games_icons_07:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->iv_gameicons_07:Landroid/widget/ImageView;

    .line 167
    sget v1, Lcom/youku/gamecenter/R$id;->hot_games_icons_08:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->iv_gameicons_08:Landroid/widget/ImageView;

    .line 169
    sget v1, Lcom/youku/gamecenter/R$id;->hot_games_01:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->ll_hot_games_01:Landroid/widget/LinearLayout;

    .line 170
    sget v1, Lcom/youku/gamecenter/R$id;->hot_games_02:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->ll_hot_games_02:Landroid/widget/LinearLayout;

    .line 171
    sget v1, Lcom/youku/gamecenter/R$id;->hot_games_03:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->ll_hot_games_03:Landroid/widget/LinearLayout;

    .line 172
    sget v1, Lcom/youku/gamecenter/R$id;->hot_games_04:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->ll_hot_games_04:Landroid/widget/LinearLayout;

    .line 173
    sget v1, Lcom/youku/gamecenter/R$id;->hot_games_05:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->ll_hot_games_05:Landroid/widget/LinearLayout;

    .line 174
    sget v1, Lcom/youku/gamecenter/R$id;->hot_games_06:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->ll_hot_games_06:Landroid/widget/LinearLayout;

    .line 175
    sget v1, Lcom/youku/gamecenter/R$id;->hot_games_07:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->ll_hot_games_07:Landroid/widget/LinearLayout;

    .line 176
    sget v1, Lcom/youku/gamecenter/R$id;->hot_games_08:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->ll_hot_games_08:Landroid/widget/LinearLayout;

    .line 178
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tvs_hotwords:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_hotwords_01:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tvs_hotwords:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_hotwords_02:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tvs_hotwords:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_hotwords_03:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tvs_hotwords:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_hotwords_04:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tvs_hotwords:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_hotwords_05:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tvs_hotwords:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_hotwords_06:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tvs_gamewords:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_gamewords_01:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tvs_gamewords:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_gamewords_02:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tvs_gamewords:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_gamewords_03:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tvs_gamewords:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_gamewords_04:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tvs_gamewords:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_gamewords_05:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tvs_gamewords:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_gamewords_06:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tvs_gamewords:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_gamewords_07:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tvs_gamewords:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_gamewords_08:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->ivs_gameicons:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->iv_gameicons_01:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->ivs_gameicons:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->iv_gameicons_02:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->ivs_gameicons:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->iv_gameicons_03:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->ivs_gameicons:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->iv_gameicons_04:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->ivs_gameicons:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->iv_gameicons_05:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->ivs_gameicons:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->iv_gameicons_06:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->ivs_gameicons:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->iv_gameicons_07:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->ivs_gameicons:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->iv_gameicons_08:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->lls_hotgames:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->ll_hot_games_01:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->lls_hotgames:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->ll_hot_games_02:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->lls_hotgames:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->ll_hot_games_03:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->lls_hotgames:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->ll_hot_games_04:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->lls_hotgames:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->ll_hot_games_05:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->lls_hotgames:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->ll_hot_games_06:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->lls_hotgames:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->ll_hot_games_07:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->lls_hotgames:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->ll_hot_games_08:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    sget v1, Lcom/youku/gamecenter/R$id;->no_result_layout:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->no_result_layout:Landroid/widget/RelativeLayout;

    .line 213
    sget v1, Lcom/youku/gamecenter/R$id;->iv_no_result:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->iv_no_result:Landroid/widget/ImageView;

    .line 214
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->iv_no_result:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->iv_no_result:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    sget v1, Lcom/youku/gamecenter/R$id;->tv_no_result:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_no_result:Landroid/widget/TextView;

    .line 219
    sget v1, Lcom/youku/gamecenter/R$id;->more_01:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->more_01:Landroid/view/View;

    .line 221
    sget v1, Lcom/youku/gamecenter/R$id;->more_02:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->more_02:Landroid/view/View;

    .line 223
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->more_01:Landroid/view/View;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->mMoreMenuClickListener_01:Lcom/youku/gamecenter/GameSearchActivity$MoreMenuClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->more_02:Landroid/view/View;

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->mMoreMenuClickListener_02:Lcom/youku/gamecenter/GameSearchActivity$MoreMenuClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    return-void
.end method

.method private sendTrack()V
    .locals 4

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/youku/gamecenter/services/URLContainer;->GAME_PAGE_STATISTICS:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/youku/gamecenter/statistics/GameTrack;->setBaseParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&location_type=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    new-instance v0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 121
    .local v0, "statistics":Lcom/youku/gamecenter/statistics/GameStatisticsTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 122
    return-void
.end method

.method private setHotgames(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "allHotgamsInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    const/4 v7, 0x0

    .line 418
    const/4 v3, 0x0

    .line 419
    .local v3, "size":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/youku/gamecenter/GameSearchActivity;->ivs_gameicons:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 420
    iget-object v4, p0, Lcom/youku/gamecenter/GameSearchActivity;->ivs_gameicons:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 424
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 425
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/data/GameInfo;

    .line 426
    .local v2, "info":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v0, v2, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    .line 427
    .local v0, "gamg_id":Ljava/lang/String;
    iget-object v4, p0, Lcom/youku/gamecenter/GameSearchActivity;->tvs_gamewords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v2, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v4, p0, Lcom/youku/gamecenter/GameSearchActivity;->tvs_gamewords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    invoke-static {}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->getInstance()Lcom/youku/gamecenter/image/ImageLoaderHelper;

    move-result-object v5

    invoke-virtual {v2}, Lcom/youku/gamecenter/data/GameInfo;->getLogo()Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lcom/youku/gamecenter/GameSearchActivity;->ivs_gameicons:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v5, v6, v4}, Lcom/youku/gamecenter/image/ImageLoaderHelper;->displayGameIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 431
    iget-object v4, p0, Lcom/youku/gamecenter/GameSearchActivity;->ivs_gameicons:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    iget-object v4, p0, Lcom/youku/gamecenter/GameSearchActivity;->lls_hotgames:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 434
    iget-object v4, p0, Lcom/youku/gamecenter/GameSearchActivity;->lls_hotgames:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    new-instance v5, Lcom/youku/gamecenter/GameSearchActivity$5;

    invoke-direct {v5, p0, v0}, Lcom/youku/gamecenter/GameSearchActivity$5;-><init>(Lcom/youku/gamecenter/GameSearchActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 422
    .end local v0    # "gamg_id":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "info":Lcom/youku/gamecenter/data/GameInfo;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 442
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method private setHotwords(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/SearchKeywordsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, "allKeywordsInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/SearchKeywordsInfo;>;"
    const/4 v3, 0x0

    .line 389
    .local v3, "size":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/youku/gamecenter/GameSearchActivity;->tvs_hotwords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 390
    iget-object v4, p0, Lcom/youku/gamecenter/GameSearchActivity;->tvs_hotwords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 394
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 395
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/SearchKeywordsInfo;

    .line 396
    .local v1, "info":Lcom/youku/gamecenter/data/SearchKeywordsInfo;
    iget-object v4, p0, Lcom/youku/gamecenter/GameSearchActivity;->tvs_hotwords:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v1, Lcom/youku/gamecenter/data/SearchKeywordsInfo;->word:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v4, p0, Lcom/youku/gamecenter/GameSearchActivity;->tvs_hotwords:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    iget-object v4, p0, Lcom/youku/gamecenter/GameSearchActivity;->tvs_hotwords:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/youku/gamecenter/GameSearchActivity;->tvs_hotwords:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Lcom/youku/gamecenter/GameSearchActivity$4;

    invoke-direct {v5, p0, v2}, Lcom/youku/gamecenter/GameSearchActivity$4;-><init>(Lcom/youku/gamecenter/GameSearchActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 392
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/youku/gamecenter/data/SearchKeywordsInfo;
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 414
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method private setTitleBarSearchClickAction()V
    .locals 3

    .prologue
    .line 228
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->et_search_game:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 229
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->gameSearch:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    sget v1, Lcom/youku/gamecenter/R$id;->layout_focus:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/GameSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 233
    .local v0, "layout_focus":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->et_search_game:Landroid/widget/EditText;

    new-instance v2, Lcom/youku/gamecenter/GameSearchActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/youku/gamecenter/GameSearchActivity$1;-><init>(Lcom/youku/gamecenter/GameSearchActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 263
    return-void
.end method

.method private showPopupMenu(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 327
    new-instance v0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->menu:Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;

    .line 328
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->menu:Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;

    const/4 v1, 0x0

    sget v2, Lcom/youku/gamecenter/R$string;->gamecenter_usercenter_more_menu_top:I

    invoke-virtual {v0, v1, v2}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->add(II)Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;

    .line 330
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->menu:Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;

    new-instance v1, Lcom/youku/gamecenter/GameSearchActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/youku/gamecenter/GameSearchActivity$2;-><init>(Lcom/youku/gamecenter/GameSearchActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->setOnItemSelectedListener(Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$OnItemSelectedListener;)V

    .line 350
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->menu:Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;

    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;->showAsDropDown(Landroid/view/View;)V

    .line 351
    return-void
.end method

.method private trackPageLoad()V
    .locals 9

    .prologue
    .line 552
    const-string/jumbo v2, "\u641c\u7d22\u9875\u52a0\u8f7d"

    const-string v3, "gamesearchLoad"

    iget-wide v4, p0, Lcom/youku/gamecenter/GameSearchActivity;->mStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v8, "\u6e38\u620f\u641c\u7d22\u9875"

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/youku/gamecenter/statistics/GameAnalytics;->trackPageLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 554
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->mStartTime:J

    .line 555
    return-void
.end method


# virtual methods
.method public addViewPlace(Ljava/lang/String;)V
    .locals 4
    .param p1, "place"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->gamecenter_group_linear:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 268
    const-string v1, ""

    .line 269
    .local v1, "squence":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->places:[Ljava/lang/String;

    .line 271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->places:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 272
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->places:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "everyoneSearched"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->gamecenter_group_linear:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/youku/gamecenter/GameSearchActivity;->view_layout_words:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "everyoneSearched,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_1
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->places:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hotGames"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->gamecenter_group_linear:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/youku/gamecenter/GameSearchActivity;->view_layout_games:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "hotGames,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 283
    :cond_2
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "place"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 284
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 285
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 564
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 565
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameSearchActivity;->finish()V

    .line 570
    :cond_0
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    const-string/jumbo v0, "\u6e38\u620f\u641c\u7d22\u9875"

    return-object v0
.end method

.method protected handleSearchKeyPressed()V
    .locals 0

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSearchActivity;->handleSearchRequest()V

    .line 515
    return-void
.end method

.method public isContextVaild()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 312
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 321
    :cond_0
    :goto_0
    return v1

    .line 315
    :cond_1
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 316
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 317
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected isShowTitle()Z
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 465
    const/16 v1, 0xa

    if-ne v1, p2, :cond_0

    .line 466
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "searchword"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "searchword":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->et_search_game:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->et_search_game:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchActivity;->et_search_game:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 471
    .end local v0    # "searchword":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/youku/gamecenter/GameBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 473
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 484
    .local v0, "viewId":I
    sget v1, Lcom/youku/gamecenter/R$id;->btn_game_search:I

    if-ne v0, v1, :cond_1

    .line 485
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSearchActivity;->handleSearchRequest()V

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    sget v1, Lcom/youku/gamecenter/R$id;->iv_no_result:I

    if-ne v0, v1, :cond_2

    .line 489
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSearchActivity;->getKeyWords()V

    goto :goto_0

    .line 492
    :cond_2
    sget v1, Lcom/youku/gamecenter/R$id;->et_search_game:I

    if-ne v0, v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->et_search_game:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 494
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->et_search_game:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 495
    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchActivity;->et_search_game:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/youku/gamecenter/GameBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSearchActivity;->initData()V

    .line 101
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSearchActivity;->sendTrack()V

    .line 102
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSearchActivity;->initView()V

    .line 103
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSearchActivity;->setTitleBarSearchClickAction()V

    .line 104
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSearchActivity;->getKeyWords()V

    .line 105
    return-void
.end method

.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 3
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 538
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameSearchActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 539
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSearchActivity;->trackPageLoad()V

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/LoadingView;->stopAnimation()V

    .line 541
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->hotwords_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->hotgames_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->no_result_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->iv_no_result:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_no_result:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 548
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameSearchActivity;->showNetTipsAutomatic()V

    .line 549
    return-void
.end method

.method public onStickMenuClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->more_01:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 289
    const-string v0, "everyoneSearched,hotGames"

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameSearchActivity;->addViewPlace(Ljava/lang/String;)V

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->more_02:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 293
    const-string v0, "hotGames,everyoneSearched"

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameSearchActivity;->addViewPlace(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/youku/gamecenter/data/HotSearchGameInfo;)V
    .locals 3
    .param p1, "hotSearchGameInfo"    # Lcom/youku/gamecenter/data/HotSearchGameInfo;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 520
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameSearchActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    invoke-direct {p0}, Lcom/youku/gamecenter/GameSearchActivity;->trackPageLoad()V

    .line 523
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->mLoadingView:Lcom/youku/gamecenter/widgets/LoadingView;

    invoke-virtual {v0}, Lcom/youku/gamecenter/widgets/LoadingView;->stopAnimation()V

    .line 524
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->hotwords_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->hotgames_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->no_result_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->iv_no_result:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->tv_no_result:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    iget-object v0, p1, Lcom/youku/gamecenter/data/HotSearchGameInfo;->hot_words:Ljava/util/List;

    iput-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->hotwords:Ljava/util/List;

    .line 530
    iget-object v0, p1, Lcom/youku/gamecenter/data/HotSearchGameInfo;->hot_games:Ljava/util/List;

    iput-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->hotgames:Ljava/util/List;

    .line 531
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->hotwords:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameSearchActivity;->setHotwords(Ljava/util/List;)V

    .line 532
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchActivity;->hotgames:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameSearchActivity;->setHotgames(Ljava/util/List;)V

    goto :goto_0
.end method

.method public setLayout()V
    .locals 1

    .prologue
    .line 559
    sget v0, Lcom/youku/gamecenter/R$layout;->activity_game_search_container:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameSearchActivity;->setContentView(I)V

    .line 560
    return-void
.end method
