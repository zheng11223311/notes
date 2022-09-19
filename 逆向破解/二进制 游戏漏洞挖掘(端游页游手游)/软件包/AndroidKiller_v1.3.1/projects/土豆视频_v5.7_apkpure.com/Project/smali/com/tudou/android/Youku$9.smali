.class Lcom/tudou/android/Youku$9;
.super Ljava/lang/Object;
.source "Youku.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/Youku;->getTudouSwitches()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/android/Youku;


# direct methods
.method constructor <init>(Lcom/tudou/android/Youku;)V
    .locals 0

    .prologue
    .line 1374
    iput-object p1, p0, Lcom/tudou/android/Youku$9;->this$0:Lcom/tudou/android/Youku;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/tudou/android/Youku$9;->this$0:Lcom/tudou/android/Youku;

    const-string v1, "detail.videorecord.enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tudou/detail/DetailSettings$DetailProp;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 1432
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get switchs failed====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 10
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1378
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 1379
    .local v0, "dataString":Ljava/lang/String;
    const-string v4, "TAG_TUDOU"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get switchs sucess====="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    new-instance v4, Lcom/youku/vo/TudouSwitchesBean;

    invoke-direct {v4}, Lcom/youku/vo/TudouSwitchesBean;-><init>()V

    invoke-virtual {p1, v4}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/TudouSwitchesBean;

    sput-object v4, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    .line 1383
    iget-object v7, p0, Lcom/tudou/android/Youku$9;->this$0:Lcom/tudou/android/Youku;

    const-string v8, "detail.videorecord.enable"

    sget-object v4, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    iget-object v4, v4, Lcom/youku/vo/TudouSwitchesBean;->switches:Lcom/youku/vo/TudouSwitchesBean$Switches;

    iget v4, v4, Lcom/youku/vo/TudouSwitchesBean$Switches;->record_video:I

    if-ne v4, v5, :cond_3

    move v4, v5

    :goto_0
    invoke-static {v7, v8, v4}, Lcom/tudou/detail/DetailSettings$DetailProp;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 1386
    sget-object v4, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    iget-object v4, v4, Lcom/youku/vo/TudouSwitchesBean;->switches:Lcom/youku/vo/TudouSwitchesBean$Switches;

    iget v4, v4, Lcom/youku/vo/TudouSwitchesBean$Switches;->tudou_app_store:I

    if-ne v4, v5, :cond_4

    move v4, v5

    :goto_1
    sput-boolean v4, Lcom/tudou/android/Youku;->isApp_market_control:Z

    .line 1387
    sget-object v4, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    iget-object v4, v4, Lcom/youku/vo/TudouSwitchesBean;->switches:Lcom/youku/vo/TudouSwitchesBean$Switches;

    iget v4, v4, Lcom/youku/vo/TudouSwitchesBean$Switches;->game_switch:I

    if-ne v4, v5, :cond_5

    move v4, v5

    :goto_2
    sput-boolean v4, Lcom/tudou/android/Youku;->isGame_Show:Z

    .line 1390
    sget-object v4, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    iget-object v4, v4, Lcom/youku/vo/TudouSwitchesBean;->switches:Lcom/youku/vo/TudouSwitchesBean$Switches;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    invoke-virtual {v4}, Lcom/youku/vo/TudouSwitchesBean;->getWatchAndChat()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1391
    iget-object v4, p0, Lcom/tudou/android/Youku$9;->this$0:Lcom/tudou/android/Youku;

    invoke-static {v4}, Lcom/tudou/android/Youku;->access$500(Lcom/tudou/android/Youku;)V

    .line 1394
    :cond_0
    const-string/jumbo v4, "soft_decoder_disable"

    invoke-static {v4}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1396
    .local v2, "soft_decoder_disable":Z
    if-nez v2, :cond_8

    .line 1397
    sget-object v4, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    iget-object v4, v4, Lcom/youku/vo/TudouSwitchesBean;->switches:Lcom/youku/vo/TudouSwitchesBean$Switches;

    iget v4, v4, Lcom/youku/vo/TudouSwitchesBean$Switches;->player_decoding_by_hardware_switch:I

    if-nez v4, :cond_6

    move v4, v5

    :goto_3
    sput-boolean v4, Lcom/tudou/android/Youku;->isCloudSoftDecoderEnable:Z

    .line 1398
    const-string/jumbo v7, "soft_decoder_disable"

    sget-boolean v4, Lcom/tudou/android/Youku;->isCloudSoftDecoderEnable:Z

    if-nez v4, :cond_7

    move v4, v5

    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1400
    sget-boolean v4, Lcom/tudou/android/Youku;->isCloudSoftDecoderEnable:Z

    if-nez v4, :cond_1

    .line 1401
    sput-boolean v6, Lcom/tudou/android/Youku;->isHighEnd:Z

    .line 1408
    :cond_1
    :goto_5
    sget-object v4, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    iget-object v4, v4, Lcom/youku/vo/TudouSwitchesBean;->switches:Lcom/youku/vo/TudouSwitchesBean$Switches;

    iget v4, v4, Lcom/youku/vo/TudouSwitchesBean$Switches;->tudou_video_default_resolution:I

    if-eqz v4, :cond_2

    sget-object v4, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    iget-object v4, v4, Lcom/youku/vo/TudouSwitchesBean;->switches:Lcom/youku/vo/TudouSwitchesBean$Switches;

    iget v4, v4, Lcom/youku/vo/TudouSwitchesBean$Switches;->tudou_video_default_resolution:I

    if-ne v4, v5, :cond_9

    .line 1410
    :cond_2
    sput v9, Lcom/tudou/android/Youku;->video_quality:I

    .line 1417
    :goto_6
    :try_start_0
    sget-object v4, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    iget-object v4, v4, Lcom/youku/vo/TudouSwitchesBean;->switches:Lcom/youku/vo/TudouSwitchesBean$Switches;

    iget v4, v4, Lcom/youku/vo/TudouSwitchesBean$Switches;->laifeng_auto_download:I

    if-ne v4, v5, :cond_b

    :goto_7
    invoke-static {v5}, Llfsdk/LFSdkManager;->setOpenSilentDownload(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1422
    :goto_8
    const-class v4, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTudouSwitches onSuccess resolution = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    iget-object v6, v6, Lcom/youku/vo/TudouSwitchesBean;->switches:Lcom/youku/vo/TudouSwitchesBean$Switches;

    iget v6, v6, Lcom/youku/vo/TudouSwitchesBean$Switches;->tudou_video_default_resolution:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    iget-object v4, p0, Lcom/tudou/android/Youku$9;->this$0:Lcom/tudou/android/Youku;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1424
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "video_quality"

    sget v6, Lcom/tudou/android/Youku;->video_quality:I

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1425
    sget v4, Lcom/tudou/android/Youku;->video_quality:I

    invoke-static {v4}, Lcom/youku/player/goplay/Profile;->setVideoQuality(I)V

    .line 1427
    return-void

    .end local v2    # "soft_decoder_disable":Z
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    :cond_3
    move v4, v6

    .line 1383
    goto/16 :goto_0

    :cond_4
    move v4, v6

    .line 1386
    goto/16 :goto_1

    :cond_5
    move v4, v6

    .line 1387
    goto/16 :goto_2

    .restart local v2    # "soft_decoder_disable":Z
    :cond_6
    move v4, v6

    .line 1397
    goto :goto_3

    :cond_7
    move v4, v6

    .line 1398
    goto :goto_4

    .line 1404
    :cond_8
    sput-boolean v6, Lcom/tudou/android/Youku;->isHighEnd:Z

    goto :goto_5

    .line 1411
    :cond_9
    sget-object v4, Lcom/tudou/android/Youku;->ALL_SWITCHES:Lcom/youku/vo/TudouSwitchesBean;

    iget-object v4, v4, Lcom/youku/vo/TudouSwitchesBean;->switches:Lcom/youku/vo/TudouSwitchesBean$Switches;

    iget v4, v4, Lcom/youku/vo/TudouSwitchesBean$Switches;->tudou_video_default_resolution:I

    if-ne v4, v9, :cond_a

    .line 1412
    sput v5, Lcom/tudou/android/Youku;->video_quality:I

    goto :goto_6

    .line 1414
    :cond_a
    sput v9, Lcom/tudou/android/Youku;->video_quality:I

    goto :goto_6

    :cond_b
    move v5, v6

    .line 1417
    goto :goto_7

    .line 1418
    :catch_0
    move-exception v1

    .line 1419
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method
