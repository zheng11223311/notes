.class public Lcom/mobisage/android/MobiSageAdReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobiSageAdReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 22
    .local v3, "action":Ljava/lang/String;
    const-string v18, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 23
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v15

    .line 24
    .local v15, "packageName":Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v15, v0}, Lcom/mobisage/android/MobiSageAdModuleHelper;->getJSON(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v10

    .line 26
    .local v10, "jsonObj":Lorg/json/JSONObject;
    if-eqz v10, :cond_0

    .line 28
    :try_start_0
    const-string v18, "adgroupid"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 29
    .local v5, "adgroupid":Ljava/lang/String;
    const-string v18, "adid"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 30
    .local v6, "adid":Ljava/lang/String;
    const-string/jumbo v18, "token"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 31
    .local v17, "token":Ljava/lang/String;
    const-string v18, "pid"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 33
    .local v16, "pid":Ljava/lang/String;
    const-string v18, "iso"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 34
    .local v4, "adISO":I
    invoke-static {}, Lcom/mobisage/android/MobiSageConfigureModule;->getInstance()Lcom/mobisage/android/MobiSageConfigureModule;

    move-result-object v18

    const-string v19, "iso"

    invoke-virtual/range {v18 .. v19}, Lcom/mobisage/android/MobiSageConfigureModule;->getConfigureData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 37
    .local v8, "configISO":I
    new-instance v13, Lcom/mobisage/android/MobiSageAction;

    invoke-direct {v13}, Lcom/mobisage/android/MobiSageAction;-><init>()V

    .line 38
    .local v13, "mobiSageAction":Lcom/mobisage/android/MobiSageAction;
    iget-object v0, v13, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "event"

    const-string v20, "2"

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, v13, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "adgroupid"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, v13, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "adid"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, v13, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string/jumbo v19, "token"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, v13, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "pid"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/mobisage/android/MobiSageTrackModule;->getInstance()Lcom/mobisage/android/MobiSageTrackModule;

    move-result-object v18

    const/16 v19, 0x7dc

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Lcom/mobisage/android/MobiSageTrackModule;->pushMobiSageAction(ILcom/mobisage/android/MobiSageAction;)V

    .line 49
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_0

    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 52
    .local v12, "localPackageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v12, v15}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 54
    .local v11, "localIntent1":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 56
    new-instance v13, Lcom/mobisage/android/MobiSageAction;

    .end local v13    # "mobiSageAction":Lcom/mobisage/android/MobiSageAction;
    invoke-direct {v13}, Lcom/mobisage/android/MobiSageAction;-><init>()V

    .line 57
    .restart local v13    # "mobiSageAction":Lcom/mobisage/android/MobiSageAction;
    iget-object v0, v13, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "event"

    const-string v20, "3"

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, v13, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "adgroupid"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, v13, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "adid"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, v13, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string/jumbo v19, "token"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, v13, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "pid"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/mobisage/android/MobiSageTrackModule;->getInstance()Lcom/mobisage/android/MobiSageTrackModule;

    move-result-object v18

    const/16 v19, 0x7dc

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Lcom/mobisage/android/MobiSageTrackModule;->pushMobiSageAction(ILcom/mobisage/android/MobiSageAction;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 84
    .end local v4    # "adISO":I
    .end local v5    # "adgroupid":Ljava/lang/String;
    .end local v6    # "adid":Ljava/lang/String;
    .end local v8    # "configISO":I
    .end local v10    # "jsonObj":Lorg/json/JSONObject;
    .end local v11    # "localIntent1":Landroid/content/Intent;
    .end local v12    # "localPackageManager":Landroid/content/pm/PackageManager;
    .end local v13    # "mobiSageAction":Lcom/mobisage/android/MobiSageAction;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "pid":Ljava/lang/String;
    .end local v17    # "token":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 73
    .restart local v10    # "jsonObj":Lorg/json/JSONObject;
    .restart local v15    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 74
    .local v9, "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v9    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v7

    .line 76
    .local v7, "ae":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v7    # "ae":Landroid/content/ActivityNotFoundException;
    :catch_2
    move-exception v14

    .line 78
    .local v14, "ne":Ljava/lang/NumberFormatException;
    invoke-virtual {v14}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method
