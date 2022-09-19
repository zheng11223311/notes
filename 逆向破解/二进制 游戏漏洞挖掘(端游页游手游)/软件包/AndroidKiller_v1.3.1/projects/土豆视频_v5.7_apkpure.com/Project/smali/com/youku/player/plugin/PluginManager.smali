.class public Lcom/youku/player/plugin/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# instance fields
.field mActivity:Landroid/support/v4/app/FragmentActivity;

.field private pluginOverlays:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/youku/player/plugin/PluginOverlay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .param p1, "youkuBasePlayerActivity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    .line 25
    iput-object p1, p0, Lcom/youku/player/plugin/PluginManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 26
    return-void
.end method


# virtual methods
.method public OnDownloadFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 411
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 412
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1, p1}, Lcom/youku/player/plugin/PluginOverlay;->onDownloadFail(Ljava/lang/String;)V

    goto :goto_0

    .line 414
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public addInvestigatePlugin(Lcom/youku/player/plugin/PluginOverlay;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "plugin"    # Lcom/youku/player/plugin/PluginOverlay;
    .param p2, "stub"    # Landroid/view/ViewGroup;

    .prologue
    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 229
    :cond_0
    invoke-virtual {p1}, Lcom/youku/player/plugin/PluginOverlay;->onPluginAdded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addLoginListener()V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method public addMediaPlayerListener(Lcom/youku/player/plugin/PluginOverlay;)V
    .locals 0
    .param p1, "plugin"    # Lcom/youku/player/plugin/PluginOverlay;

    .prologue
    .line 34
    return-void
.end method

.method public addPlugin(Lcom/youku/player/plugin/PluginOverlay;Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "plugin"    # Lcom/youku/player/plugin/PluginOverlay;
    .param p2, "stub"    # Landroid/view/ViewGroup;

    .prologue
    .line 162
    :try_start_0
    iget-object v3, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/plugin/PluginOverlay;

    .line 163
    .local v2, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/youku/player/plugin/PluginOverlay;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 169
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 170
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 171
    iget-object v3, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/youku/player/plugin/PluginOverlay;->setVisible(Z)V

    .line 174
    invoke-virtual {p1}, Lcom/youku/player/plugin/PluginOverlay;->onPluginAdded()V

    .line 175
    iget-object v3, p0, Lcom/youku/player/plugin/PluginManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public addPlugin(Lcom/youku/player/plugin/PluginOverlay;Landroid/widget/FrameLayout;II)V
    .locals 4
    .param p1, "plugin"    # Lcom/youku/player/plugin/PluginOverlay;
    .param p2, "stub"    # Landroid/widget/FrameLayout;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 238
    :try_start_0
    iget-object v3, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/plugin/PluginOverlay;

    .line 239
    .local v2, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/youku/player/plugin/PluginOverlay;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 241
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 242
    invoke-virtual {p2, p1, p3, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 243
    iget-object v3, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/youku/player/plugin/PluginOverlay;->setVisible(Z)V

    .line 252
    invoke-virtual {p1}, Lcom/youku/player/plugin/PluginOverlay;->onPluginAdded()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public addPluginAbove(Lcom/youku/player/plugin/PluginOverlay;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "plugin"    # Lcom/youku/player/plugin/PluginOverlay;
    .param p2, "stub"    # Landroid/view/ViewGroup;

    .prologue
    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 194
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/youku/player/plugin/PluginOverlay;->setVisible(Z)V

    .line 195
    invoke-virtual {p1}, Lcom/youku/player/plugin/PluginOverlay;->onPluginAdded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addPluginInvisibaleButReceiveMsg(Lcom/youku/player/plugin/PluginOverlay;)V
    .locals 2
    .param p1, "plugin"    # Lcom/youku/player/plugin/PluginOverlay;

    .prologue
    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addYoukuPlayerView(Lcom/youku/player/plugin/PluginOverlay;)V
    .locals 1
    .param p1, "plugin"    # Lcom/youku/player/plugin/PluginOverlay;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-virtual {p1}, Lcom/youku/player/plugin/PluginOverlay;->onPluginAdded()V

    .line 221
    :cond_0
    return-void
.end method

.method public clearUpDownFav()V
    .locals 3

    .prologue
    .line 305
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 306
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->onClearUpDownFav()V

    goto :goto_0

    .line 308
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public needDownloadDRMSo(Ljava/lang/String;)V
    .locals 3
    .param p1, "soName"    # Ljava/lang/String;

    .prologue
    .line 463
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 464
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1, p1}, Lcom/youku/player/plugin/PluginOverlay;->needDownloadDRMSo(Ljava/lang/String;)V

    goto :goto_0

    .line 466
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public newVideo()V
    .locals 0

    .prologue
    .line 399
    return-void
.end method

.method public notifyChangeQuality()V
    .locals 3

    .prologue
    .line 121
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 122
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->onNotifyChangeVideoQuality()V

    goto :goto_0

    .line 124
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onADplaying()V
    .locals 3

    .prologue
    .line 477
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 478
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->onADplaying()V

    goto :goto_0

    .line 480
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onBufferPercentUpdate(I)V
    .locals 3
    .param p1, "percent"    # I

    .prologue
    .line 457
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 458
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1, p1}, Lcom/youku/player/plugin/PluginOverlay;->onBufferPercentUpdate(I)V

    goto :goto_0

    .line 460
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onBufferingUpdateListener(I)V
    .locals 3
    .param p1, "percent"    # I

    .prologue
    .line 45
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 46
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1, p1}, Lcom/youku/player/plugin/PluginOverlay;->onBufferingUpdateListener(I)V

    goto :goto_0

    .line 48
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onChangeVideo()V
    .locals 4

    .prologue
    .line 348
    :try_start_0
    iget-object v3, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/plugin/PluginOverlay;

    .line 349
    .local v2, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v2}, Lcom/youku/player/plugin/PluginOverlay;->onVideoChange()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 354
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public onCompletionListener()V
    .locals 4

    .prologue
    .line 51
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v3, "onCompletionListener"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 53
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->onCompletionListener()V

    goto :goto_0

    .line 55
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onCurrentPositionChange(I)V
    .locals 3
    .param p1, "currentPosition"    # I

    .prologue
    .line 101
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 102
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1, p1}, Lcom/youku/player/plugin/PluginOverlay;->OnCurrentPositionChangeListener(I)V

    goto :goto_0

    .line 104
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onDownloadSucc()V
    .locals 3

    .prologue
    .line 405
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 406
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->onDownloadSucc()V

    goto :goto_0

    .line 408
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onError(II)Z
    .locals 4
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 58
    const/4 v2, 0x0

    .line 59
    .local v2, "result":Z
    iget-object v3, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 60
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1, p1, p2}, Lcom/youku/player/plugin/PluginOverlay;->onErrorListener(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    const/4 v2, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_1
    return v2
.end method

.method public onLoaded()V
    .locals 4

    .prologue
    .line 107
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v3, "\u901a\u77e5\u89c6\u9891\u52a0\u8f7d\u6210\u529f onLoaded"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 109
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->onLoadedListener()V

    goto :goto_0

    .line 111
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onLoading()V
    .locals 4

    .prologue
    .line 114
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v3, "\u901a\u77e5\u89c6\u9891\u52a0\u8f7d onLoading"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 116
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->onLoadingListener()V

    goto :goto_0

    .line 118
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onLoginFail()V
    .locals 3

    .prologue
    .line 133
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 134
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->loginFail()V

    goto :goto_0

    .line 136
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onLoginSucc()V
    .locals 3

    .prologue
    .line 127
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 128
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->loginSucc()V

    goto :goto_0

    .line 130
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onMute(Z)V
    .locals 3
    .param p1, "mute"    # Z

    .prologue
    .line 323
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 324
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1, p1}, Lcom/youku/player/plugin/PluginOverlay;->onMute(Z)V

    goto :goto_0

    .line 326
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onNetSpeedChange(I)V
    .locals 3
    .param p1, "speed"    # I

    .prologue
    .line 145
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 146
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1, p1}, Lcom/youku/player/plugin/PluginOverlay;->onNetSpeedChange(I)V

    goto :goto_0

    .line 148
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onNotifyChangeVideoQuality()V
    .locals 3

    .prologue
    .line 95
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 96
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->onNotifyChangeVideoQuality()V

    goto :goto_0

    .line 98
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 341
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 342
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->onPause()V

    goto :goto_0

    .line 344
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onPlayNoRightVideo(Lcom/youku/player/goplay/GoplayException;)V
    .locals 3
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 383
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 384
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1, p1}, Lcom/youku/player/plugin/PluginOverlay;->onPlayNoRightVideo(Lcom/youku/player/goplay/GoplayException;)V

    goto :goto_0

    .line 386
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onPlayReleateNoRightVideo()V
    .locals 3

    .prologue
    .line 389
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 390
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->onPlayReleateNoRightVideo()V

    goto :goto_0

    .line 392
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onPrepared()V
    .locals 3

    .prologue
    .line 67
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 68
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->OnPreparedListener()V

    goto :goto_0

    .line 70
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onRealVideoStart()V
    .locals 3

    .prologue
    .line 377
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 378
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->onRealVideoStart()V

    goto :goto_0

    .line 380
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 3

    .prologue
    .line 429
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 430
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->onRelease()V

    goto :goto_0

    .line 432
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onReplay()V
    .locals 3

    .prologue
    .line 435
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 436
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->onReplay()V

    goto :goto_0

    .line 438
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 449
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 450
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->onResume()V

    goto :goto_0

    .line 454
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onSeekComplete()V
    .locals 3

    .prologue
    .line 73
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 74
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->OnSeekCompleteListener()V

    goto :goto_0

    .line 76
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 332
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 333
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->onStart()V

    goto :goto_0

    .line 335
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onSubscribe()V
    .locals 3

    .prologue
    .line 417
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 418
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->onSubscribe()V

    goto :goto_0

    .line 420
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onSubtitlePrepared()V
    .locals 4

    .prologue
    .line 441
    sget-object v2, Lcom/youku/player/subtitle/SubtitleManager;->TAG:Ljava/lang/String;

    const-string v3, "onSubtitlePrepared()"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 443
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->onSubtitlePrepared()V

    goto :goto_0

    .line 445
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onTimeout()V
    .locals 3

    .prologue
    .line 89
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 90
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->OnTimeoutListener()V

    goto :goto_0

    .line 92
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onUnFavor()V
    .locals 3

    .prologue
    .line 139
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 140
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->onUnFavor()V

    goto :goto_0

    .line 142
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onUnSubscribe()V
    .locals 3

    .prologue
    .line 423
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 424
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->onUnSubscribe()V

    goto :goto_0

    .line 426
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onVideoInfoGetFail(Z)V
    .locals 3
    .param p1, "retry"    # Z

    .prologue
    .line 371
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 372
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1, p1}, Lcom/youku/player/plugin/PluginOverlay;->onVideoInfoGetFail(Z)V

    goto :goto_0

    .line 374
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onVideoInfoGetted()V
    .locals 4

    .prologue
    .line 363
    iget-object v3, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    monitor-enter v3

    .line 364
    :try_start_0
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 365
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->onVideoInfoGetted()V

    goto :goto_0

    .line 367
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    return-void
.end method

.method public onVideoInfoGetting()V
    .locals 3

    .prologue
    .line 357
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 358
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->onVideoInfoGetting()V

    goto :goto_0

    .line 360
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 80
    :try_start_0
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 81
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1, p1, p2}, Lcom/youku/player/plugin/PluginOverlay;->OnVideoSizeChangedListener(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :catch_0
    move-exception v2

    .line 86
    :cond_0
    return-void
.end method

.method public onVolumnDown()V
    .locals 3

    .prologue
    .line 317
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 318
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->onVolumnDown()V

    goto :goto_0

    .line 320
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public onVolumnUp()V
    .locals 3

    .prologue
    .line 311
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 312
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->onVolumnUp()V

    goto :goto_0

    .line 314
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public removeLoginListener()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method public removeMediaPlayerListener(Lcom/youku/player/plugin/PluginOverlay;)V
    .locals 0
    .param p1, "plugin"    # Lcom/youku/player/plugin/PluginOverlay;

    .prologue
    .line 42
    return-void
.end method

.method public removePlugin(Lcom/youku/player/plugin/PluginOverlay;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "plugin"    # Lcom/youku/player/plugin/PluginOverlay;
    .param p2, "stub"    # Landroid/widget/FrameLayout;

    .prologue
    .line 269
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 270
    return-void
.end method

.method public set3GTips()V
    .locals 3

    .prologue
    .line 468
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 469
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->set3GTips()V

    goto :goto_0

    .line 471
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public setDown()V
    .locals 3

    .prologue
    .line 291
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 292
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->onDown()V

    goto :goto_0

    .line 295
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public setFav()V
    .locals 3

    .prologue
    .line 298
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 299
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->onFavor()V

    goto :goto_0

    .line 302
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method

.method public setUp()V
    .locals 3

    .prologue
    .line 285
    iget-object v2, p0, Lcom/youku/player/plugin/PluginManager;->pluginOverlays:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/plugin/PluginOverlay;

    .line 286
    .local v1, "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginOverlay;->onUp()V

    goto :goto_0

    .line 288
    .end local v1    # "pluginOverlay":Lcom/youku/player/plugin/PluginOverlay;
    :cond_0
    return-void
.end method
