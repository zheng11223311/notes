.class public Lcom/youku/gamecenter/GameManagerFragment;
.super Lcom/youku/gamecenter/fragment/GameBaseFragment;
.source "GameManagerFragment.java"

# interfaces
.implements Lcom/youku/gamecenter/OnGameInfoChangedListener;
.implements Lcom/youku/gamecenter/outer/InstallablePromptHelper$OnInstallablePromptGotListener;
.implements Lcom/youku/gamecenter/DelayNotifyHandler$OnDelayNotifyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/GameManagerFragment$1;,
        Lcom/youku/gamecenter/GameManagerFragment$GameIcon;,
        Lcom/youku/gamecenter/GameManagerFragment$ImageAsyncTask;,
        Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;
    }
.end annotation


# static fields
.field public static POPUP_WINDOW_HEIGHT:I

.field public static POPUP_WINDOW_WIDTH:I


# instance fields
.field private mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

.field private mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

.field private mGameListView:Landroid/widget/ListView;

.field private mGameManagerListAdapter:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

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

.field private mPromptHelper:Lcom/youku/gamecenter/outer/InstallablePromptHelper;

.field private mTextView:Landroid/widget/TextView;

.field public mType:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameBaseFragment;-><init>()V

    .line 50
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getInstance()Lcom/youku/gamecenter/GameCenterModel;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mIconCache:Ljava/util/Map;

    .line 54
    sget-object v0, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;->TYPE_UNKNOW:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    iput-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mType:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    .line 56
    invoke-static {}, Lcom/youku/gamecenter/DelayNotifyHandler;->getInstance()Lcom/youku/gamecenter/DelayNotifyHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    .line 348
    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/GameManagerFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameManagerFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mIconCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/gamecenter/GameManagerFragment;)Lcom/youku/gamecenter/adapter/GameManagerListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/GameManagerFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mGameManagerListAdapter:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    return-object v0
.end method

.method private addIntervalFoot()V
    .locals 4

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$layout;->layout_game_rank_header:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, "footer":Landroid/view/View;
    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerFragment;->mGameListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 168
    return-void
.end method

.method private cancelDownloadTask(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 1
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/youku/gamecenter/GameCenterModel;->cancelDownloadTask(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;)V

    .line 271
    return-void
.end method

.method private clearInstallNotifycation(Ljava/lang/String;)V
    .locals 2
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 262
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-static {v0, p1}, Lcom/youku/gamecenter/GameCenterModel;->clearInstalledNotifycation(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteDownloadTask(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 1
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 256
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameManagerFragment;->clearInstallNotifycation(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/youku/gamecenter/GameCenterModel;->deleteDownloadTask(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;)V

    .line 258
    return-void
.end method

.method private doClickAction(Lcom/youku/gamecenter/widgets/ActionItem;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 3
    .param p1, "item"    # Lcom/youku/gamecenter/widgets/ActionItem;
    .param p2, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 235
    sget-object v0, Lcom/youku/gamecenter/GameManagerFragment$1;->$SwitchMap$com$youku$gamecenter$widgets$ActionItem:[I

    invoke-virtual {p1}, Lcom/youku/gamecenter/widgets/ActionItem;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 252
    :goto_0
    return-void

    .line 237
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/youku/gamecenter/GameManagerFragment;->cancelDownloadTask(Lcom/youku/gamecenter/data/GameInfo;)V

    goto :goto_0

    .line 240
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/youku/gamecenter/GameManagerFragment;->deleteDownloadTask(Lcom/youku/gamecenter/data/GameInfo;)V

    goto :goto_0

    .line 243
    :pswitch_2
    iget-object v0, p2, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameManagerFragment;->uninstallApp(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :pswitch_3
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p2, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    const-string v2, "19"

    invoke-static {v0, v1, v2}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameDetailsActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initDatas()V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$dimen;->game_manager_popwindow_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/youku/gamecenter/GameManagerFragment;->POPUP_WINDOW_WIDTH:I

    .line 134
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$dimen;->game_manager_popwindow_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/youku/gamecenter/GameManagerFragment;->POPUP_WINDOW_HEIGHT:I

    .line 137
    new-instance v0, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;-><init>(Lcom/youku/gamecenter/GameManagerFragment;Z)V

    iput-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mGameManagerListAdapter:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    .line 139
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0}, Lcom/youku/gamecenter/GameCenterModel;->sortGameManagerData()V

    .line 141
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerFragment;->loadGameIcons()V

    .line 143
    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 156
    sget v0, Lcom/youku/gamecenter/R$id;->list_gamemanger:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mGameListView:Landroid/widget/ListView;

    .line 157
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerFragment;->addIntervalFoot()V

    .line 158
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mGameListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerFragment;->mGameManagerListAdapter:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mGameListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 160
    sget v0, Lcom/youku/gamecenter/R$id;->empty_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mTextView:Landroid/widget/TextView;

    .line 161
    return-void
.end method

.method private loadGameIcons()V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerFragment;->loadUnCachedIconPathes()Ljava/util/List;

    move-result-object v0

    .line 190
    .local v0, "unCachedIconPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameManagerFragment;->loadGameIconsByPathes(Ljava/util/List;)V

    .line 191
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
    .line 213
    .local p1, "pathes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    new-instance v0, Lcom/youku/gamecenter/GameManagerFragment$ImageAsyncTask;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/GameManagerFragment$ImageAsyncTask;-><init>(Lcom/youku/gamecenter/GameManagerFragment;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/GameManagerFragment$ImageAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

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
    .line 194
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 196
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

    .line 197
    .local v0, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0}, Lcom/youku/gamecenter/data/GameInfo;->getLogo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/gamecenter/util/FileUtils;->getIconFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
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

    invoke-virtual {p0, v4}, Lcom/youku/gamecenter/GameManagerFragment;->logs(Ljava/lang/String;)V

    .line 203
    iput-object v2, v0, Lcom/youku/gamecenter/data/GameInfo;->download_apk_icon_path:Ljava/lang/String;

    .line 204
    iget-object v4, p0, Lcom/youku/gamecenter/GameManagerFragment;->mIconCache:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 207
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    .end local v0    # "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    .end local v2    # "iconPath":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    if-nez p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "type":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    const-string v1, "TYPE_INSTALLED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    sget-object v1, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;->TYPE_INSTALLED:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    iput-object v1, p0, Lcom/youku/gamecenter/GameManagerFragment;->mType:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    goto :goto_0

    .line 110
    :cond_2
    const-string v1, "TYPE_UNINSTALLED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    sget-object v1, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;->TYPE_UNINSTALLED:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    iput-object v1, p0, Lcom/youku/gamecenter/GameManagerFragment;->mType:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    goto :goto_0

    .line 114
    :cond_3
    const-string v1, "TYPE_UPGRADE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 115
    sget-object v1, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;->TYPE_UPGRADE:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    iput-object v1, p0, Lcom/youku/gamecenter/GameManagerFragment;->mType:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    goto :goto_0

    .line 118
    :cond_4
    const-string v1, "TYPE_UNKNOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    sget-object v1, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;->TYPE_UNKNOW:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    iput-object v1, p0, Lcom/youku/gamecenter/GameManagerFragment;->mType:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    goto :goto_0
.end method

.method private setGameListVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 220
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 222
    .local v0, "visibility":I
    :goto_0
    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerFragment;->mGameListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 223
    return-void

    .line 220
    .end local v0    # "visibility":I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setUIDatas()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mType:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    invoke-static {v0}, Lcom/youku/gamecenter/GameCenterModel;->getGameManagerDataByType(Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-direct {p0, v1}, Lcom/youku/gamecenter/GameManagerFragment;->setGameListVisible(Z)V

    .line 173
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerFragment;->mType:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    iget v1, v1, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;->emptyTextResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 182
    :goto_0
    return-void

    .line 178
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameManagerFragment;->setGameListVisible(Z)V

    .line 179
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mGameManagerListAdapter:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerFragment;->mType:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    invoke-static {v1}, Lcom/youku/gamecenter/GameCenterModel;->getGameManagerDataByType(Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->setData(Ljava/util/List;)V

    .line 181
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mGameManagerListAdapter:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public getRightActionItemByStatus(Lcom/youku/gamecenter/data/GameInfoStatus;)Lcom/youku/gamecenter/widgets/ActionItem;
    .locals 3
    .param p1, "status"    # Lcom/youku/gamecenter/data/GameInfoStatus;

    .prologue
    .line 281
    sget-object v0, Lcom/youku/gamecenter/GameManagerFragment$1;->$SwitchMap$com$youku$gamecenter$data$GameInfoStatus:[I

    invoke-virtual {p1}, Lcom/youku/gamecenter/data/GameInfoStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 294
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->getRightActionItemByStatus\tnot support\tstatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "! This status should not be visible at GameManager!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :pswitch_0
    sget-object v0, Lcom/youku/gamecenter/widgets/ActionItem;->ACTION_CANCEL:Lcom/youku/gamecenter/widgets/ActionItem;

    .line 292
    :goto_0
    return-object v0

    .line 288
    :pswitch_1
    sget-object v0, Lcom/youku/gamecenter/widgets/ActionItem;->ACTION_DELETE:Lcom/youku/gamecenter/widgets/ActionItem;

    goto :goto_0

    .line 290
    :pswitch_2
    sget-object v0, Lcom/youku/gamecenter/widgets/ActionItem;->ACTION_UNINSTALL:Lcom/youku/gamecenter/widgets/ActionItem;

    goto :goto_0

    .line 292
    :pswitch_3
    sget-object v0, Lcom/youku/gamecenter/widgets/ActionItem;->ACTION_UNINSTALL:Lcom/youku/gamecenter/widgets/ActionItem;

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public handleActionButtonClick(Lcom/youku/gamecenter/widgets/ActionItem;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 0
    .param p1, "item"    # Lcom/youku/gamecenter/widgets/ActionItem;
    .param p2, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 230
    invoke-direct {p0, p1, p2}, Lcom/youku/gamecenter/GameManagerFragment;->doClickAction(Lcom/youku/gamecenter/widgets/ActionItem;Lcom/youku/gamecenter/data/GameInfo;)V

    .line 231
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerFragment;->setUIDatas()V

    .line 232
    return-void
.end method

.method protected initViews(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 147
    sget v1, Lcom/youku/gamecenter/R$layout;->fragment_game_manager:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameManagerFragment;->initViews(Landroid/view/View;)V

    .line 150
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerFragment;->setUIDatas()V

    .line 151
    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public loadDatas()V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method public logs(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 226
    const-string v0, "GameCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

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

    .line 227
    return-void
.end method

.method public notifyFragmentFocused()V
    .locals 0

    .prologue
    .line 370
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameManagerFragment;->restoreState(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    .line 87
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mPromptHelper:Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    .line 88
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mPromptHelper:Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->addListener(Lcom/youku/gamecenter/outer/InstallablePromptHelper$OnInstallablePromptGotListener;)V

    .line 90
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->addOnGameInfoChangedListener(Lcom/youku/gamecenter/OnGameInfoChangedListener;)V

    .line 92
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerFragment;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/youku/gamecenter/DelayNotifyHandler;->addListener(ILcom/youku/gamecenter/DelayNotifyHandler$OnDelayNotifyListener;)V

    .line 94
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerFragment;->initDatas()V

    .line 96
    return-void
.end method

.method public onDelayNotify()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mGameManagerListAdapter:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->notifyDataSetChanged()V

    .line 392
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 303
    invoke-super {p0}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->onDestroy()V

    .line 305
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->removeOnGameInfoChangedListener(Lcom/youku/gamecenter/OnGameInfoChangedListener;)V

    .line 307
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mPromptHelper:Lcom/youku/gamecenter/outer/InstallablePromptHelper;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/outer/InstallablePromptHelper;->removeListener(Lcom/youku/gamecenter/outer/InstallablePromptHelper$OnInstallablePromptGotListener;)V

    .line 309
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerFragment;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/DelayNotifyHandler;->removeListener(I)V

    .line 311
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mIconCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    .line 314
    return-void
.end method

.method public onGameInfoProgressChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mDelayHandler:Lcom/youku/gamecenter/DelayNotifyHandler;

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerFragment;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/DelayNotifyHandler;->sendSimpleMessage(Lcom/youku/gamecenter/DelayNotifyHandler;I)V

    .line 380
    return-void
.end method

.method public onGameInfoStatusChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/youku/gamecenter/GameManagerFragment;->setUIDatas()V

    .line 375
    return-void
.end method

.method public onInstallablePromptGot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "prompt"    # Ljava/lang/String;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mGameManagerListAdapter:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/youku/gamecenter/GameManagerFragment;->mGameManagerListAdapter:Lcom/youku/gamecenter/adapter/GameManagerListAdapter;

    invoke-virtual {v0}, Lcom/youku/gamecenter/adapter/GameManagerListAdapter;->notifyDataSetChanged()V

    .line 387
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    const-string/jumbo v0, "type"

    iget-object v1, p0, Lcom/youku/gamecenter/GameManagerFragment;->mType:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    invoke-virtual {v1}, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public setGameManagerType(Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;)V
    .locals 0
    .param p1, "type"    # Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/youku/gamecenter/GameManagerFragment;->mType:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    .line 186
    return-void
.end method

.method public uninstallApp(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkg_id"    # Ljava/lang/String;

    .prologue
    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 275
    .local v1, "packageURI":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/GameManagerFragment;->startActivity(Landroid/content/Intent;)V

    .line 278
    return-void
.end method
