.class public abstract Lcom/youku/gamecenter/fragment/GameBaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "GameBaseFragment.java"

# interfaces
.implements Lcom/youku/gamecenter/OnGameInfoChangedListener;
.implements Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;


# static fields
.field public static final DEFAULT_FRAGMENT_NAME:Ljava/lang/String; = "default_fragment"

.field public static final EXTENT_FRAGMENT_NAME:Ljava/lang/String; = "extent_fragment"

.field public static final HOME_FRAGMENT_NAME:Ljava/lang/String; = "home_fragment"

.field public static final HOT_FRAGMENT_NAME:Ljava/lang/String; = "hot_fragment"

.field public static final NEWGAME_FRAGMENT_NAME:Ljava/lang/String; = "newgame_fragment"

.field public static final NEW_FRAGMENT_NAME:Ljava/lang/String; = "newest_fragment"

.field public static final RANK_FRAGMENT_NAME:Ljava/lang/String; = "rank_fragment"

.field public static final SELECTED_FRAGMENT_NAME:Ljava/lang/String; = "selected_fragment"


# instance fields
.field protected isFragmentVisibleToUser:Z

.field protected isScrolling:Z

.field protected mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

.field protected mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

.field protected mHander:Landroid/os/Handler;

.field public mId:I

.field protected mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 24
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getInstance()Lcom/youku/gamecenter/GameCenterModel;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameBaseFragment;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameBaseFragment;->mHander:Landroid/os/Handler;

    .line 40
    iput-boolean v1, p0, Lcom/youku/gamecenter/fragment/GameBaseFragment;->isScrolling:Z

    .line 41
    iput-boolean v1, p0, Lcom/youku/gamecenter/fragment/GameBaseFragment;->isFragmentVisibleToUser:Z

    return-void
.end method

.method private clearToast()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameBaseFragment;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameBaseFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameBaseFragment;->mToast:Landroid/widget/Toast;

    goto :goto_0
.end method

.method protected static getFootViewFaildTitleResId(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "netAvailable"    # Z

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$string;->game_center_tips_no_network_retry:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/gamecenter/R$string;->game_center_tips_no_network:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static newInstance(I)Lcom/youku/gamecenter/fragment/GameBaseFragment;
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "f":Lcom/youku/gamecenter/fragment/GameBaseFragment;
    packed-switch p0, :pswitch_data_0

    .line 94
    :goto_0
    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    invoke-virtual {v1, v0}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 97
    return-object v1

    .line 60
    .end local v0    # "args":Landroid/os/Bundle;
    :pswitch_1
    new-instance v1, Lcom/youku/gamecenter/fragment/GameHomeFragment;

    .end local v1    # "f":Lcom/youku/gamecenter/fragment/GameBaseFragment;
    invoke-direct {v1}, Lcom/youku/gamecenter/fragment/GameHomeFragment;-><init>()V

    .line 61
    .restart local v1    # "f":Lcom/youku/gamecenter/fragment/GameBaseFragment;
    goto :goto_0

    .line 63
    :pswitch_2
    new-instance v1, Lcom/youku/gamecenter/fragment/GameCategoryFragment;

    .end local v1    # "f":Lcom/youku/gamecenter/fragment/GameBaseFragment;
    invoke-direct {v1}, Lcom/youku/gamecenter/fragment/GameCategoryFragment;-><init>()V

    .line 64
    .restart local v1    # "f":Lcom/youku/gamecenter/fragment/GameBaseFragment;
    goto :goto_0

    .line 66
    :pswitch_3
    new-instance v1, Lcom/youku/gamecenter/fragment/GameRankFragment;

    .end local v1    # "f":Lcom/youku/gamecenter/fragment/GameBaseFragment;
    invoke-direct {v1}, Lcom/youku/gamecenter/fragment/GameRankFragment;-><init>()V

    .line 67
    .restart local v1    # "f":Lcom/youku/gamecenter/fragment/GameBaseFragment;
    goto :goto_0

    .line 69
    :pswitch_4
    new-instance v1, Lcom/youku/gamecenter/fragment/GameExtendFragment;

    .end local v1    # "f":Lcom/youku/gamecenter/fragment/GameBaseFragment;
    invoke-direct {v1}, Lcom/youku/gamecenter/fragment/GameExtendFragment;-><init>()V

    .line 70
    .restart local v1    # "f":Lcom/youku/gamecenter/fragment/GameBaseFragment;
    goto :goto_0

    .line 72
    :pswitch_5
    new-instance v1, Lcom/youku/gamecenter/fragment/NewGameFragment;

    .end local v1    # "f":Lcom/youku/gamecenter/fragment/GameBaseFragment;
    invoke-direct {v1}, Lcom/youku/gamecenter/fragment/NewGameFragment;-><init>()V

    .line 73
    .restart local v1    # "f":Lcom/youku/gamecenter/fragment/GameBaseFragment;
    goto :goto_0

    .line 75
    :pswitch_6
    new-instance v1, Lcom/youku/gamecenter/GameManagerFragment;

    .end local v1    # "f":Lcom/youku/gamecenter/fragment/GameBaseFragment;
    invoke-direct {v1}, Lcom/youku/gamecenter/GameManagerFragment;-><init>()V

    .line 76
    .restart local v1    # "f":Lcom/youku/gamecenter/fragment/GameBaseFragment;
    goto :goto_0

    .line 78
    :pswitch_7
    new-instance v1, Lcom/youku/gamecenter/fragment/PresentListFragment;

    .end local v1    # "f":Lcom/youku/gamecenter/fragment/GameBaseFragment;
    invoke-direct {v1}, Lcom/youku/gamecenter/fragment/PresentListFragment;-><init>()V

    .line 79
    .restart local v1    # "f":Lcom/youku/gamecenter/fragment/GameBaseFragment;
    goto :goto_0

    .line 81
    :pswitch_8
    new-instance v1, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment;

    .end local v1    # "f":Lcom/youku/gamecenter/fragment/GameBaseFragment;
    invoke-direct {v1}, Lcom/youku/gamecenter/fragment/GameLocalPresentFragment;-><init>()V

    .line 82
    .restart local v1    # "f":Lcom/youku/gamecenter/fragment/GameBaseFragment;
    goto :goto_0

    .line 84
    :pswitch_9
    new-instance v1, Lcom/youku/gamecenter/fragment/GameNetSelectedFragment;

    .end local v1    # "f":Lcom/youku/gamecenter/fragment/GameBaseFragment;
    invoke-direct {v1}, Lcom/youku/gamecenter/fragment/GameNetSelectedFragment;-><init>()V

    .line 85
    .restart local v1    # "f":Lcom/youku/gamecenter/fragment/GameBaseFragment;
    goto :goto_0

    .line 87
    :pswitch_a
    new-instance v1, Lcom/youku/gamecenter/fragment/GameNetHotFragment;

    .end local v1    # "f":Lcom/youku/gamecenter/fragment/GameBaseFragment;
    invoke-direct {v1}, Lcom/youku/gamecenter/fragment/GameNetHotFragment;-><init>()V

    .line 88
    .restart local v1    # "f":Lcom/youku/gamecenter/fragment/GameBaseFragment;
    goto :goto_0

    .line 90
    :pswitch_b
    new-instance v1, Lcom/youku/gamecenter/fragment/GameNetNewestFragment;

    .end local v1    # "f":Lcom/youku/gamecenter/fragment/GameBaseFragment;
    invoke-direct {v1}, Lcom/youku/gamecenter/fragment/GameNetNewestFragment;-><init>()V

    .restart local v1    # "f":Lcom/youku/gamecenter/fragment/GameBaseFragment;
    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private registerReceivers()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameBaseFragment;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->addOnGameInfoChangedListener(Lcom/youku/gamecenter/OnGameInfoChangedListener;)V

    .line 114
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameBaseFragment;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->addOnNetworkStateChangeReceiver(Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;)V

    .line 115
    return-void
.end method

.method private unRegisterReceivers()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameBaseFragment;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->removeOnGameInfoChangedListener(Lcom/youku/gamecenter/OnGameInfoChangedListener;)V

    .line 119
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameBaseFragment;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/GameCenterModel;->removeOnNetworkStateChangeReceiver(Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;)V

    .line 120
    return-void
.end method


# virtual methods
.method public getFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    const-string v0, "default_fragment"

    return-object v0
.end method

.method protected abstract initViews(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected isActivityValid()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract isLoaded()Z
.end method

.method protected isNetWorkAvaliable()Z
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public abstract loadDatas()V
.end method

.method public abstract notifyFragmentFocused()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/GameBaseActivity;

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameBaseFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    .line 103
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->registerReceivers()V

    .line 104
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->initViews(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 159
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->unRegisterReceivers()V

    .line 160
    invoke-direct {p0}, Lcom/youku/gamecenter/fragment/GameBaseFragment;->clearToast()V

    .line 161
    return-void
.end method

.method public onGameInfoProgressChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 180
    return-void
.end method

.method public onGameInfoStatusChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 175
    return-void
.end method

.method public onNetworkAvailable()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 194
    iput-boolean p1, p0, Lcom/youku/gamecenter/fragment/GameBaseFragment;->isFragmentVisibleToUser:Z

    .line 195
    return-void
.end method

.method protected showToast(I)V
    .locals 3
    .param p1, "strId"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameBaseFragment;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameBaseFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameBaseFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/fragment/GameBaseFragment;->mBaseActivity:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {v1}, Lcom/youku/gamecenter/GameBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/fragment/GameBaseFragment;->mToast:Landroid/widget/Toast;

    .line 153
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameBaseFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 154
    return-void
.end method
