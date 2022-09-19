.class final Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;
.super Ljava/lang/Object;
.source "FullScreenClickOperate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field callback:Lcom/youku/util/IChangeDefinition;

.field context:Lcom/tudou/ui/activity/DetailActivity;

.field mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field private pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

.field soloReplay:Landroid/widget/TextView;

.field private sp:Landroid/content/SharedPreferences;

.field private userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/DetailActivity;Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;Lcom/youku/player/plugin/MediaPlayerDelegate;Landroid/content/SharedPreferences;Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;)V
    .locals 0
    .param p1, "context"    # Lcom/tudou/ui/activity/DetailActivity;
    .param p2, "pluginFullScreenPlay"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;
    .param p3, "mMediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p4, "sp"    # Landroid/content/SharedPreferences;
    .param p5, "userAction"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->context:Lcom/tudou/ui/activity/DetailActivity;

    .line 55
    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    .line 56
    iput-object p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 57
    iput-object p4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->sp:Landroid/content/SharedPreferences;

    .line 58
    iput-object p5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    .line 59
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->initSoloPlay()V

    .line 60
    return-void
.end method

.method constructor <init>(Lcom/tudou/ui/activity/DetailActivity;Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;Lcom/youku/player/plugin/MediaPlayerDelegate;Landroid/content/SharedPreferences;Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;Lcom/youku/util/IChangeDefinition;)V
    .locals 0
    .param p1, "context"    # Lcom/tudou/ui/activity/DetailActivity;
    .param p2, "pluginFullScreenPlay"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;
    .param p3, "mMediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p4, "sp"    # Landroid/content/SharedPreferences;
    .param p5, "userAction"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;
    .param p6, "callback"    # Lcom/youku/util/IChangeDefinition;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->context:Lcom/tudou/ui/activity/DetailActivity;

    .line 67
    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    .line 68
    iput-object p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 69
    iput-object p4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->sp:Landroid/content/SharedPreferences;

    .line 70
    iput-object p5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    .line 71
    iput-object p6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->callback:Lcom/youku/util/IChangeDefinition;

    .line 72
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->initSoloPlay()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private changeVideoPicture(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 193
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 200
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const v1, 0x7f0c02f7

    if-eq p1, v1, :cond_0

    const v1, 0x7f0c02f9

    if-eq p1, v1, :cond_0

    const v1, 0x7f0c02f8

    if-ne p1, v1, :cond_4

    .line 201
    :cond_0
    sget v1, Lcom/youku/player/goplay/Profile;->videoQuality:I

    if-nez v1, :cond_2

    .line 230
    :cond_1
    :goto_0
    return-void

    .line 203
    :cond_2
    const-string v1, "\u64ad\u653e\u9875\u8d85\u6e05\u6309\u94ae\u9009\u62e9"

    const-class v2, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u8d85\u6e05\u6309\u94ae"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1, v6}, Lcom/youku/player/plugin/MediaPlayerDelegate;->changeVideoQuality(I)V

    .line 207
    const-string v1, "video_quality"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 227
    :cond_3
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 228
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->changVideoQuality()V

    goto :goto_0

    .line 208
    :cond_4
    const v1, 0x7f0c02f4

    if-eq p1, v1, :cond_5

    const v1, 0x7f0c02f6

    if-eq p1, v1, :cond_5

    const v1, 0x7f0c02f5

    if-ne p1, v1, :cond_6

    .line 209
    :cond_5
    sget v1, Lcom/youku/player/goplay/Profile;->videoQuality:I

    if-eq v1, v4, :cond_1

    .line 211
    const-string v1, "\u64ad\u653e\u9875\u9ad8\u6e05\u6309\u94ae\u9009\u62e9"

    const-class v2, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u9ad8\u6e05\u6309\u94ae"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1, v4}, Lcom/youku/player/plugin/MediaPlayerDelegate;->changeVideoQuality(I)V

    .line 216
    const-string v1, "video_quality"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 217
    :cond_6
    const v1, 0x7f0c02f1

    if-eq p1, v1, :cond_7

    const v1, 0x7f0c02f3

    if-eq p1, v1, :cond_7

    const v1, 0x7f0c02f2

    if-ne p1, v1, :cond_3

    .line 218
    :cond_7
    sget v1, Lcom/youku/player/goplay/Profile;->videoQuality:I

    if-eq v1, v5, :cond_1

    .line 220
    const-string v1, "\u64ad\u653e\u9875\u6807\u6e05\u6309\u94ae\u9009\u62e9"

    const-class v2, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u6807\u6e05\u6309\u94ae"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1, v5}, Lcom/youku/player/plugin/MediaPlayerDelegate;->changeVideoQuality(I)V

    .line 225
    const-string v1, "video_quality"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method private changeVideoPlayRule(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 259
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 260
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const v1, 0x7f0c0b55

    if-ne p1, v1, :cond_1

    .line 261
    const-string v1, "play_mode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 262
    invoke-static {v2}, Lcom/youku/player/goplay/Profile;->setPlayMode(I)V

    .line 263
    const-string v1, "\u64ad\u653e\u9875\u8bbe\u7f6e\u64ad\u653e\u59cb\u7ec8\u8fde\u64ad"

    const-class v2, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u8bbe\u7f6e\u64ad\u653e"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->soloReplay:Landroid/widget/TextView;

    const-string v2, "\u59cb\u7ec8\u8fde\u64ad"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 280
    return-void

    .line 266
    :cond_1
    const v1, 0x7f0c0b57

    if-ne p1, v1, :cond_2

    .line 267
    const-string v1, "\u64ad\u653e\u9875\u8bbe\u7f6e\u64ad\u653e\u4e0d\u8fde\u64ad"

    const-class v2, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u8bbe\u7f6e\u64ad\u653e"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v1, "play_mode"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 270
    invoke-static {v4}, Lcom/youku/player/goplay/Profile;->setPlayMode(I)V

    .line 271
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->soloReplay:Landroid/widget/TextView;

    const-string v2, "\u4e0d\u8fde\u64ad"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 272
    :cond_2
    const v1, 0x7f0c0b56

    if-ne p1, v1, :cond_0

    .line 273
    const-string v1, "\u64ad\u653e\u9875\u8bbe\u7f6e\u64ad\u653e\u5355\u89c6\u9891\u5faa\u73af"

    const-class v2, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u8bbe\u7f6e\u64ad\u653e"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v1, "play_mode"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 276
    invoke-static {v5}, Lcom/youku/player/goplay/Profile;->setPlayMode(I)V

    .line 277
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->soloReplay:Landroid/widget/TextView;

    const-string v2, "\u5355\u66f2\u5faa\u73af"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private changeVideoSize(I)V
    .locals 8
    .param p1, "id"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 178
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 179
    .local v7, "msg":Landroid/os/Message;
    const/16 v0, 0xce

    iput v0, v7, Landroid/os/Message;->what:I

    .line 180
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->context:Lcom/tudou/ui/activity/DetailActivity;

    const-string v1, "\u64ad\u653e\u9875\u8bbe\u7f6e\u753b\u8d28\u8c03\u8282"

    const-class v2, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u8bbe\u7f6e\u753b\u8d28"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 183
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 184
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->context:Lcom/tudou/ui/activity/DetailActivity;

    iget v1, v7, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->resizeMediaPlayer(I)V

    .line 185
    return-void
.end method

.method private initSoloPlay()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b43

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->soloReplay:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->soloReplay:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->soloReplay:Landroid/widget/TextView;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate$1;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method


# virtual methods
.method protected changVideoQuality()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->setCurQuality()V

    .line 242
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->firstLoaded:Z

    .line 243
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->pluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->changeVideoQuality:Z

    .line 251
    return-void
.end method

.method public checkBoxOperate(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .local v2, "id":I
    move-object v0, p1

    .line 129
    check-cast v0, Landroid/widget/CheckBox;

    .line 130
    .local v0, "cb":Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 131
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const v3, 0x7f0c0b53

    if-ne v2, v3, :cond_0

    .line 132
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    const v3, -0x8b00

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 134
    invoke-static {v5}, Lcom/youku/player/goplay/Profile;->setSkipHeadAndTail(Z)V

    .line 135
    const-string v3, "skip_head"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 142
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    return-void

    .line 137
    :cond_1
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 138
    invoke-static {v4}, Lcom/youku/player/goplay/Profile;->setSkipHeadAndTail(Z)V

    .line 139
    const-string v3, "skip_head"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->userAction()V

    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/RadioButton;

    if-ne v0, v1, :cond_1

    .line 112
    invoke-virtual {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->radioButtonOperate(Landroid/view/View;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/CheckBox;

    if-ne v0, v1, :cond_2

    .line 114
    invoke-virtual {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->checkBoxOperate(Landroid/view/View;)V

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    if-ne v0, v1, :cond_3

    .line 116
    invoke-virtual {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->radioButtonOperate(Landroid/view/View;)V

    goto :goto_0

    .line 117
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/RelativeLayout;

    if-ne v0, v1, :cond_0

    .line 118
    invoke-virtual {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->radioButtonOperate(Landroid/view/View;)V

    goto :goto_0
.end method

.method public radioButtonOperate(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 169
    :goto_0
    :pswitch_0
    return-void

    .line 159
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->changeVideoSize(I)V

    goto :goto_0

    .line 162
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->changeVideoPicture(I)V

    .line 163
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->callback:Lcom/youku/util/IChangeDefinition;

    invoke-interface {v0}, Lcom/youku/util/IChangeDefinition;->onChangeVideoDefinitionComplete()V

    goto :goto_0

    .line 166
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;->changeVideoPlayRule(I)V

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
