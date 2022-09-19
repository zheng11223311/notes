.class public Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;
.super Landroid/support/v4/app/Fragment;
.source "PluginSmallPayPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field buy_vip:Landroid/widget/TextView;

.field coprice:Landroid/widget/TextView;

.field coprice_layout:Landroid/view/View;

.field isSmall:Z

.field private isTitleInvisible:Z

.field login:Landroid/view/View;

.field login_layout:Landroid/view/View;

.field mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field nologin_layout:Landroid/view/View;

.field oriprice:Lcom/youku/widget/SquareTextView;

.field pay_tips:Landroid/widget/TextView;

.field payinfo:Lcom/youku/player/module/PayInfo;

.field small_back:Landroid/view/View;

.field tip:Ljava/lang/String;

.field title:Landroid/widget/TextView;

.field titletext:Ljava/lang/String;

.field vipError:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/youku/player/module/PayInfo;Lcom/youku/player/plugin/MediaPlayerDelegate;ZILjava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "payInfo"    # Lcom/youku/player/module/PayInfo;
    .param p3, "mMediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p4, "issmool"    # Z
    .param p5, "vipError"    # I
    .param p6, "tip"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->isTitleInvisible:Z

    .line 58
    sget-object v0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " construct"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->titletext:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    .line 61
    iput-object p3, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 62
    iput-boolean p4, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->isSmall:Z

    .line 63
    iput p5, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->vipError:I

    .line 64
    iput-object p6, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->tip:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public invisibleTitle()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->title:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->isTitleInvisible:Z

    .line 96
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x4e22

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 171
    :sswitch_0
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 172
    iget-boolean v3, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->isSmall:Z

    if-nez v3, :cond_1

    .line 173
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->goSmall()V

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 180
    :sswitch_1
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    if-eqz v3, :cond_0

    .line 181
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/PayInfo;->supportMon()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 182
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/tudou/ui/activity/VipBuyActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1, v5}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VideoDetail|BuyNow|ct=\u7535\u5f71&itemCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&albumID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "str":Ljava/lang/String;
    const-string v3, "\u8bd5\u64ad\u5b8c10\u5206\u949f\u8d2d\u4e70\u4f1a\u5458\u70b9\u51fb"

    const-class v4, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u8bd5\u64ad\u5b8c10\u5206\u949f\u8d2d\u4e70\u4f1a\u5458"

    invoke-static {v3, v4, v5, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "str":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 188
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "arguments.extra.aid"

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    iget-object v4, v4, Lcom/youku/player/module/PayInfo;->showid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v3, "arguments.extra.oriprice"

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    iget-object v4, v4, Lcom/youku/player/module/PayInfo;->oriprice:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v3, "arguments.extra.coprice"

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    iget-object v4, v4, Lcom/youku/player/module/PayInfo;->coprice:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v3, "arguments.extra.title"

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v3, "arguments.extra.duration"

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    iget-object v4, v4, Lcom/youku/player/module/PayInfo;->duration:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment$2;

    invoke-direct {v4, p0}, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment$2;-><init>(Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;)V

    invoke-static {v3, v0, v4}, Lcom/tudou/ui/fragment/BuyFilmFragment;->ShowBuyFilmFragment(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tudou/ui/fragment/BuyFilmFragment$BuyFilmCallBack;)V

    goto/16 :goto_0

    .line 205
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/tudou/ui/activity/LoginActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1, v5}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 212
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_2
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/youku/phone/detail/DetailUtil;->goLogin(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 169
    :sswitch_data_0
    .sparse-switch
        0x7f0c011e -> :sswitch_0
        0x7f0c04ed -> :sswitch_1
        0x7f0c04ef -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->isSmall:Z

    if-eqz v1, :cond_0

    const v1, 0x7f030115

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment$1;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment$1;-><init>(Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 86
    return-object v0

    .line 75
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    const v1, 0x7f030113

    goto :goto_0
.end method

.method public onLoginchange()V
    .locals 2

    .prologue
    .line 160
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/PayInfo;->supportMon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->login_layout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->login_layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 100
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 101
    const v0, 0x7f0c011e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->small_back:Landroid/view/View;

    .line 102
    const v0, 0x7f0c00f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->title:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f0c04e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->nologin_layout:Landroid/view/View;

    .line 104
    const v0, 0x7f0c04ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->buy_vip:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f0c04ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->login:Landroid/view/View;

    .line 107
    const v0, 0x7f0c04e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->pay_tips:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f0c04ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->coprice_layout:Landroid/view/View;

    .line 110
    const v0, 0x7f0c04eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->coprice:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0c04ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/SquareTextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->oriprice:Lcom/youku/widget/SquareTextView;

    .line 113
    const v0, 0x7f0c04ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->login_layout:Landroid/view/View;

    .line 115
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->isTitleInvisible:Z

    if-eqz v0, :cond_3

    .line 116
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->title:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->small_back:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->small_back:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->buy_vip:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->login:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->onLoginchange()V

    .line 126
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->coprice:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->oriprice:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->coprice_layout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->coprice:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\uffe5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    iget-object v2, v2, Lcom/youku/player/module/PayInfo;->coprice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->oriprice:Lcom/youku/widget/SquareTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\uffe5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    iget-object v2, v2, Lcom/youku/player/module/PayInfo;->oriprice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/SquareTextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->oriprice:Lcom/youku/widget/SquareTextView;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->oriprice:Lcom/youku/widget/SquareTextView;

    invoke-virtual {v1}, Lcom/youku/widget/SquareTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/SquareTextView;->setTag(Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->oriprice:Lcom/youku/widget/SquareTextView;

    invoke-virtual {v0, v3}, Lcom/youku/widget/SquareTextView;->setmode(I)V

    .line 133
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->oriprice:Lcom/youku/widget/SquareTextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1}, Lcom/youku/widget/SquareTextView;->setGone(ZI)V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/PayInfo;->supportMon()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 136
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "episodes"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->pay_tips:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u672c\u7247\u4e3a\u4f1a\u5458\u89c6\u9891\uff0c\u60a8\u53ef\u4ee5\u514d\u8d39\u89c2\u770b\u524d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    iget-object v2, v2, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget v2, v2, Lcom/youku/player/module/PayInfo$Trial;->episodes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u96c6\uff0c\u89c2\u770b\u5b8c\u6574\u7248\u8bf7\u5f00\u901a\u4f1a\u5458"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :goto_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->buy_vip:Landroid/widget/TextView;

    const-string v1, "\u5f00\u901a\u4f1a\u5458"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_2
    :goto_2
    return-void

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->titletext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 138
    :cond_4
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "cannot"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 139
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->pay_tips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->tip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 141
    :cond_5
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->pay_tips:Landroid/widget/TextView;

    const-string v1, "\u8bd5\u770b\u7ed3\u675f\uff0c\u89c2\u770b\u5b8c\u6574\u7248\u8bf7\u5f00\u901a\u4f1a\u5458"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 145
    :cond_6
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, "episodes"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 146
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->pay_tips:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u672c\u7247\u4e3a\u4f1a\u5458\u89c6\u9891\uff0c\u60a8\u53ef\u4ee5\u514d\u8d39\u89c2\u770b\u524d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    iget-object v2, v2, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget v2, v2, Lcom/youku/player/module/PayInfo$Trial;->episodes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u96c6\uff0c\u89c2\u770b\u5b8c\u6574\u7248\u8bf7\u5f00\u901a\u4f1a\u5458"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :goto_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->buy_vip:Landroid/widget/TextView;

    const-string v1, "\u8d2d\u4e70\u5f71\u7247"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->coprice_layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 147
    :cond_7
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "cannot"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->payinfo:Lcom/youku/player/module/PayInfo;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 148
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->pay_tips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->tip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 150
    :cond_8
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->pay_tips:Landroid/widget/TextView;

    const-string v1, "\u8bd5\u770b\u7ed3\u675f\uff0c\u89c2\u770b\u5b8c\u6574\u7248\u8bf7\u8d2d\u4e70"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method
