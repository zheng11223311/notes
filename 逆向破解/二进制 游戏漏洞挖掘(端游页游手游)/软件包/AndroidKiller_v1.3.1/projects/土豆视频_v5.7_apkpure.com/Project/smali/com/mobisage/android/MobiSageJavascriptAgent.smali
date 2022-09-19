.class Lcom/mobisage/android/MobiSageJavascriptAgent;
.super Ljava/lang/Object;
.source "MobiSageJavascriptAgent.java"


# instance fields
.field adGroupID:Ljava/lang/String;

.field adID:Ljava/lang/String;

.field private adView:Lcom/mobisage/android/MobiSageAdView;

.field private final closeHanler:Landroid/os/Handler;

.field private context:Landroid/content/Context;

.field customData:Ljava/lang/String;

.field private listener:Lcom/mobisage/android/IMobiSageAdViewListener;

.field private mCallDialog:Landroid/app/AlertDialog;

.field publisherID:Ljava/lang/String;

.field token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mobisage/android/MobiSageAdView;Lcom/mobisage/android/IMobiSageAdViewListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mobiSageAdView"    # Lcom/mobisage/android/MobiSageAdView;
    .param p3, "listener"    # Lcom/mobisage/android/IMobiSageAdViewListener;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/mobisage/android/MobiSageJavascriptAgent$1;

    invoke-direct {v0, p0}, Lcom/mobisage/android/MobiSageJavascriptAgent$1;-><init>(Lcom/mobisage/android/MobiSageJavascriptAgent;)V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->closeHanler:Landroid/os/Handler;

    .line 40
    iput-object p1, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    .line 41
    iput-object p3, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->listener:Lcom/mobisage/android/IMobiSageAdViewListener;

    .line 42
    iput-object p2, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->adView:Lcom/mobisage/android/MobiSageAdView;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/mobisage/android/MobiSageJavascriptAgent;)Lcom/mobisage/android/MobiSageAdView;
    .locals 1
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageJavascriptAgent;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->adView:Lcom/mobisage/android/MobiSageAdView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mobisage/android/MobiSageJavascriptAgent;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageJavascriptAgent;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mobisage/android/MobiSageJavascriptAgent;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageJavascriptAgent;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageJavascriptAgent;->processAPKDownloadAction(Ljava/util/HashMap;)V

    return-void
.end method

.method private getSdAvailableSize()J
    .locals 11

    .prologue
    .line 872
    const-wide/16 v4, -0x1

    .line 873
    .local v4, "sdAvaliableSize":J
    const-string v8, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 875
    new-instance v6, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 877
    .local v6, "stat":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v2, v8

    .line 878
    .local v2, "blockSize":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    .line 879
    .local v0, "avaliableBlocks":J
    mul-long v4, v2, v0

    .line 880
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_0

    .line 881
    const-wide/16 v4, 0x1

    .line 889
    .end local v0    # "avaliableBlocks":J
    .end local v2    # "blockSize":J
    .end local v6    # "stat":Landroid/os/StatFs;
    :cond_0
    :goto_0
    return-wide v4

    .line 884
    :cond_1
    iget-object v8, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    const-string/jumbo v9, "sd\u5361\u6ca1\u6709\u6302\u8f7d\uff01"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 886
    .local v7, "toast":Landroid/widget/Toast;
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private getSdTotoalSize()J
    .locals 11

    .prologue
    .line 854
    const-wide/16 v2, -0x1

    .line 855
    .local v2, "sdTotalSize":J
    const-string v8, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 857
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 859
    .local v4, "stat":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v8

    int-to-long v6, v8

    .line 860
    .local v6, "totalBlocks":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v0, v8

    .line 861
    .local v0, "blockSize":J
    mul-long v2, v6, v0

    .line 868
    .end local v0    # "blockSize":J
    .end local v4    # "stat":Landroid/os/StatFs;
    .end local v6    # "totalBlocks":J
    :goto_0
    return-wide v2

    .line 863
    :cond_0
    iget-object v8, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    const-string/jumbo v9, "sd\u5361\u6ca1\u6709\u6302\u8f7d\uff01"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 865
    .local v5, "toast":Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static isConnect(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 982
    const/4 v0, 0x0

    .line 983
    .local v0, "isConnected":Z
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 985
    .local v1, "manager":Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 987
    .local v2, "mobile":Landroid/net/NetworkInfo$State;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 989
    .local v3, "wifi":Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v4, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v2, v4, :cond_2

    .line 990
    :cond_0
    const/4 v0, 0x1

    .line 994
    :cond_1
    :goto_0
    return v0

    .line 991
    :cond_2
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_1

    .line 992
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private judgeIntail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionName"    # Ljava/lang/String;

    .prologue
    .line 955
    const/4 v1, 0x0

    .line 957
    .local v1, "flag":Z
    :try_start_0
    iget-object v3, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 962
    .local v2, "pm":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eq v3, p1, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eq v3, p2, :cond_2

    :cond_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    .line 966
    :cond_2
    const/4 v1, 0x1

    .line 972
    .end local v2    # "pm":Landroid/content/pm/PackageInfo;
    :cond_3
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 968
    :catch_0
    move-exception v0

    .line 970
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processAPKDownloadAction(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 922
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    const-class v5, Lcom/mobisage/android/MobiSageApkService;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 923
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 924
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "action"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 925
    const-string v5, "lpg"

    const-string v4, "lpg"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const-string v4, "name"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 927
    const-string v5, "name"

    const-string v4, "name"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    :goto_0
    const-string v4, "pack"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 933
    const-string v5, "pack"

    const-string v4, "pack"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    :cond_0
    const-string v4, "ExtraData"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 937
    iget-object v4, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    if-eqz v4, :cond_1

    .line 938
    iget-object v4, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 944
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 929
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v3, Ljava/io/File;

    const-string v4, "lpg"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 930
    .local v3, "temp":Ljava/io/File;
    const-string v4, "name"

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 939
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "temp":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 940
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private processAPKDownloadActionAlert(Ljava/util/HashMap;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 628
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v13, ""

    .line 629
    .local v13, "packageName":Ljava/lang/String;
    const-string v22, "packagename"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 630
    const-string v22, "packagename"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "packageName":Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 632
    .restart local v13    # "packageName":Ljava/lang/String;
    :cond_0
    const-string v4, ""

    .line 633
    .local v4, "activityName":Ljava/lang/String;
    const-string v22, "activityname"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 634
    const-string v22, "activityname"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "activityName":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 636
    .restart local v4    # "activityName":Ljava/lang/String;
    :cond_1
    const-string v21, ""

    .line 637
    .local v21, "versionName":Ljava/lang/String;
    const-string/jumbo v22, "version"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 638
    const-string/jumbo v22, "version"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "versionName":Ljava/lang/String;
    check-cast v21, Ljava/lang/String;

    .line 640
    .restart local v21    # "versionName":Ljava/lang/String;
    :cond_2
    const-string v9, ""

    .line 641
    .local v9, "downloadTip":Ljava/lang/String;
    const-string/jumbo v22, "tip"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 642
    const-string/jumbo v22, "tip"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "downloadTip":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 669
    .restart local v9    # "downloadTip":Ljava/lang/String;
    :cond_3
    const-string v22, "eventtype"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v23, "8"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4

    const-string v22, "8"

    const-string v23, "eventtype"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 671
    :cond_4
    const-string v22, "eventtype"

    const/16 v23, 0x9

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v13, v1}, Lcom/mobisage/android/MobiSageJavascriptAgent;->judgeIntail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 700
    :try_start_0
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 701
    .local v12, "mIntent":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v13, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    .local v7, "comp":Landroid/content/ComponentName;
    invoke-virtual {v12, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 704
    const-string v22, "android.intent.action.MAIN"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    const/high16 v22, 0x10000000

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 706
    const-string v22, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    .end local v7    # "comp":Landroid/content/ComponentName;
    .end local v12    # "mIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 708
    :catch_0
    move-exception v10

    .line 709
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mobisage/android/MobiSageLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 713
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    .line 714
    .local v14, "sdCard":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-virtual {v14}, Ljava/io/File;->canWrite()Z

    move-result v22

    if-nez v22, :cond_8

    .line 715
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string/jumbo v23, "\u65e0\u6cd5\u4e0b\u8f7d\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684SD\u5361\uff01"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    .line 717
    .local v20, "toast":Landroid/widget/Toast;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 719
    .end local v20    # "toast":Landroid/widget/Toast;
    :cond_8
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/mobisage/android/MobiSageJavascriptAgent;->getSdTotoalSize()J

    move-result-wide v22

    invoke-direct/range {p0 .. p0}, Lcom/mobisage/android/MobiSageJavascriptAgent;->getSdAvailableSize()J

    move-result-wide v24

    div-long v22, v22, v24

    const-wide/16 v24, 0x64

    cmp-long v22, v22, v24

    if-ltz v22, :cond_9

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string/jumbo v23, "\u5bb9\u91cf\u4e0d\u8db3\uff0c\u8bf7\u6e05\u7406\u60a8\u7684SD\u5361\uff01"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v20

    .line 723
    .restart local v20    # "toast":Landroid/widget/Toast;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 728
    .end local v20    # "toast":Landroid/widget/Toast;
    :cond_9
    const/16 v18, 0x0

    .line 730
    .local v18, "tempFile":Ljava/io/File;
    :try_start_1
    new-instance v19, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 735
    .end local v18    # "tempFile":Ljava/io/File;
    .local v19, "tempFile":Ljava/io/File;
    :goto_1
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdirs()Z

    .line 736
    new-instance v17, Ljava/net/URL;

    const-string v22, "lpg"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 737
    .local v17, "temp":Ljava/net/URL;
    new-instance v15, Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 738
    .local v15, "target":Ljava/io/File;
    const/16 v16, 0x0

    .line 740
    .local v16, "targetPath":Ljava/lang/String;
    :try_start_3
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v16

    .line 748
    :goto_2
    :try_start_4
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 749
    .end local v19    # "tempFile":Ljava/io/File;
    .restart local v18    # "tempFile":Ljava/io/File;
    :try_start_5
    sget-object v22, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    const-string v23, "lpg"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/mobisage/android/MobiSageJavascriptAgent;->isConnect(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 752
    sget-object v22, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    const-string/jumbo v23, "\u7a0b\u5e8f\u6b63\u5728\u4e0b\u8f7d\u4e2d\uff0c\u65e0\u9700\u91cd\u590d\u4e0b\u8f7d\uff0c\u8bf7\u7b49\u5f85..."

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 773
    .end local v15    # "target":Ljava/io/File;
    .end local v16    # "targetPath":Ljava/lang/String;
    .end local v17    # "temp":Ljava/net/URL;
    :catch_1
    move-exception v10

    .line 774
    .restart local v10    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 776
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_a
    const-string v22, ""

    move-object/from16 v0, v22

    if-eq v9, v0, :cond_b

    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 777
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/mobisage/android/MobiSageJavascriptAgent;->processAPKDownloadAction(Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 732
    :catch_2
    move-exception v10

    .line 733
    .local v10, "e":Ljava/lang/NoSuchFieldError;
    :try_start_6
    new-instance v19, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/Download/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .end local v18    # "tempFile":Ljava/io/File;
    .restart local v19    # "tempFile":Ljava/io/File;
    goto/16 :goto_1

    .line 743
    .end local v10    # "e":Ljava/lang/NoSuchFieldError;
    .restart local v15    # "target":Ljava/io/File;
    .restart local v16    # "targetPath":Ljava/lang/String;
    .restart local v17    # "temp":Ljava/net/URL;
    :catch_3
    move-exception v10

    .line 744
    .restart local v10    # "e":Ljava/lang/NoSuchFieldError;
    :try_start_7
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/Download/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-result-object v16

    goto/16 :goto_2

    .line 757
    .end local v10    # "e":Ljava/lang/NoSuchFieldError;
    .end local v19    # "tempFile":Ljava/io/File;
    .restart local v18    # "tempFile":Ljava/io/File;
    :cond_c
    :try_start_8
    sget-object v22, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    const-string/jumbo v23, "\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u8bf7\u8bbe\u7f6e!"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 761
    :cond_d
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 763
    new-instance v11, Landroid/content/Intent;

    sget-object v22, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    const-class v23, Lcom/mobisage/android/MobiSageApkService;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 765
    .local v11, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 766
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v22, "action"

    const/16 v23, 0x6

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 768
    const-string v22, "lpg"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string v22, "ExtraData"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 770
    sget-object v22, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 779
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v15    # "target":Ljava/io/File;
    .end local v16    # "targetPath":Ljava/lang/String;
    .end local v17    # "temp":Ljava/net/URL;
    :cond_e
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 780
    .local v5, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 781
    .local v8, "downdialog":Landroid/app/AlertDialog;
    const-string/jumbo v22, "\u63d0\u793a"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 782
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 783
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 784
    const/16 v22, -0x1

    const-string/jumbo v23, "\u786e\u5b9a"

    new-instance v24, Lcom/mobisage/android/MobiSageJavascriptAgent$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/mobisage/android/MobiSageJavascriptAgent$4;-><init>(Lcom/mobisage/android/MobiSageJavascriptAgent;Ljava/util/HashMap;)V

    move/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v8, v0, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 840
    const/16 v22, -0x2

    const-string/jumbo v23, "\u53d6\u6d88"

    new-instance v24, Lcom/mobisage/android/MobiSageJavascriptAgent$5;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/mobisage/android/MobiSageJavascriptAgent$5;-><init>(Lcom/mobisage/android/MobiSageJavascriptAgent;Landroid/app/AlertDialog;)V

    move/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v8, v0, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 848
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 773
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v8    # "downdialog":Landroid/app/AlertDialog;
    .end local v18    # "tempFile":Ljava/io/File;
    .restart local v19    # "tempFile":Ljava/io/File;
    :catch_4
    move-exception v10

    move-object/from16 v18, v19

    .end local v19    # "tempFile":Ljava/io/File;
    .restart local v18    # "tempFile":Ljava/io/File;
    goto/16 :goto_3
.end method

.method private processActionCallInWeb(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v4, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 438
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const-string v4, "android.permission.CALL_PHONE"

    sget-object v5, Lcom/mobisage/android/MobiSageAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 441
    .local v1, "flag":I
    if-nez v1, :cond_0

    .line 442
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL"

    const-string v4, "lpg"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "tel://"

    const-string/jumbo v7, "tel:"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 444
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 445
    iget-object v4, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 456
    .end local v1    # "flag":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 447
    .restart local v1    # "flag":I
    .restart local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.DIAL"

    const-string v4, "lpg"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "tel://"

    const-string/jumbo v7, "tel:"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 449
    .restart local v2    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 450
    iget-object v4, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 452
    .end local v1    # "flag":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mobisage/android/MobiSageLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processActionClickToCall(Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x1

    .line 483
    invoke-static {}, Lcom/mobisage/android/MobiSageConfigureModule;->getInstance()Lcom/mobisage/android/MobiSageConfigureModule;

    move-result-object v7

    const-string v8, "calltype"

    invoke-virtual {v7, v8}, Lcom/mobisage/android/MobiSageConfigureModule;->getConfigureData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 485
    .local v1, "callType":I
    const-string/jumbo v7, "tip"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 486
    .local v6, "tip":Ljava/lang/String;
    if-ne v1, v9, :cond_4

    .line 487
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 489
    :try_start_0
    iget-object v7, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 490
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    const-string v7, "android.permission.CALL_PHONE"

    sget-object v8, Lcom/mobisage/android/MobiSageAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 493
    .local v3, "flag":I
    if-nez v3, :cond_1

    .line 494
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.CALL"

    const-string v7, "lpg"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v9, "tel://"

    const-string/jumbo v10, "tel:"

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 497
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 498
    iget-object v7, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 618
    .end local v3    # "flag":I
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 500
    .restart local v3    # "flag":I
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.DIAL"

    const-string v7, "lpg"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v9, "tel://"

    const-string/jumbo v10, "tel:"

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 503
    .restart local v4    # "intent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 504
    iget-object v7, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 506
    .end local v3    # "flag":I
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 507
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mobisage/android/MobiSageLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 510
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v7, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->mCallDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->mCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_0

    .line 511
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 513
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->mCallDialog:Landroid/app/AlertDialog;

    .line 514
    iget-object v7, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->mCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 515
    iget-object v7, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->mCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 516
    iget-object v7, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->mCallDialog:Landroid/app/AlertDialog;

    const/4 v8, -0x1

    const-string v9, "OK"

    new-instance v10, Lcom/mobisage/android/MobiSageJavascriptAgent$2;

    invoke-direct {v10, p0, p1}, Lcom/mobisage/android/MobiSageJavascriptAgent$2;-><init>(Lcom/mobisage/android/MobiSageJavascriptAgent;Ljava/util/HashMap;)V

    invoke-virtual {v7, v8, v9, v10}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 584
    iget-object v7, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->mCallDialog:Landroid/app/AlertDialog;

    const/4 v8, -0x2

    const-string v9, "Cancel"

    new-instance v10, Lcom/mobisage/android/MobiSageJavascriptAgent$3;

    invoke-direct {v10, p0}, Lcom/mobisage/android/MobiSageJavascriptAgent$3;-><init>(Lcom/mobisage/android/MobiSageJavascriptAgent;)V

    invoke-virtual {v7, v8, v9, v10}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 591
    iget-object v7, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->mCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 596
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 597
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    const-string v7, "android.permission.CALL_PHONE"

    sget-object v8, Lcom/mobisage/android/MobiSageAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 600
    .restart local v3    # "flag":I
    if-nez v3, :cond_5

    .line 601
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.CALL"

    const-string v7, "lpg"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v9, "tel://"

    const-string/jumbo v10, "tel:"

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 604
    .restart local v4    # "intent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 605
    iget-object v7, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 613
    .end local v3    # "flag":I
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v2

    .line 614
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mobisage/android/MobiSageLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 607
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "flag":I
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_5
    :try_start_2
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.DIAL"

    const-string v7, "lpg"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v9, "tel://"

    const-string/jumbo v10, "tel:"

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 610
    .restart local v4    # "intent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 611
    iget-object v7, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method private processActionWebbrowser(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 364
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.browser"

    const-string v4, "com.android.browser.BrowserActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .local v2, "localComponentName":Landroid/content/ComponentName;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 368
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string v3, "lpg"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 370
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 372
    iget-object v3, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_0

    .line 373
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "lpg"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 375
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 378
    :cond_0
    iget-object v3, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "localComponentName":Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mobisage/android/MobiSageLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 381
    iget-object v3, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    const-string/jumbo v4, "\u65e0\u6cd5\u6253\u5f00\uff0c\u60a8\u7684\u624b\u673a\u6ca1\u6709\u5b89\u88c5\u6d4f\u89c8\u5668"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private processSendSMS(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "smscontent"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 316
    .local v2, "smsContent":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v5, "smsto:"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 317
    .local v4, "uri":Landroid/net/Uri;
    const-string/jumbo v5, "smsnumbers"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 318
    const-string/jumbo v5, "smsnumbers"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 319
    .local v3, "smsNos":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "smsto://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\\|"

    const-string v7, ";"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 321
    .end local v3    # "smsNos":Ljava/lang/String;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 322
    .local v1, "sendSMSIntent":Landroid/content/Intent;
    const-string/jumbo v5, "sms_body"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    iget-object v5, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .end local v1    # "sendSMSIntent":Landroid/content/Intent;
    .end local v4    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private processWebpageActivity(Ljava/util/HashMap;ZZ)V
    .locals 6
    .param p2, "isVideo"    # Z
    .param p3, "single"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_2

    .line 187
    sget-object v3, Lcom/mobisage/android/MobiSageActivity;->sAdViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->adView:Lcom/mobisage/android/MobiSageAdView;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    sget-object v3, Lcom/mobisage/android/MobiSageActivity;->sAdViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->adView:Lcom/mobisage/android/MobiSageAdView;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->adView:Lcom/mobisage/android/MobiSageAdView;

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_2
    new-instance v0, Lcom/mobisage/android/MobiSageAction;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageAction;-><init>()V

    .line 195
    .local v0, "action":Lcom/mobisage/android/MobiSageAction;
    iget-object v4, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v5, "EventType"

    const-string v3, "eventtype"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string/jumbo v3, "token"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 197
    iget-object v4, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v5, "Token"

    const-string/jumbo v3, "token"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_1
    const-string v3, "adid"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 201
    iget-object v4, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v5, "AdID"

    const-string v3, "adid"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_2
    const-string v3, "adgroupid"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 205
    iget-object v4, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v5, "AdGroupID"

    const-string v3, "adgroupid"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_3
    const-string/jumbo v3, "tag"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 209
    iget-object v4, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v5, "Tag"

    const-string/jumbo v3, "tag"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_3
    iget-object v3, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->customData:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 211
    iget-object v3, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v4, "CustomData"

    iget-object v5, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->customData:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_4
    iget-object v3, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v4, "PublisherID"

    iget-object v5, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->publisherID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v3, "orientation"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 215
    iget-object v4, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v5, "orientation"

    const-string v3, "orientation"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_5
    if-nez p2, :cond_6

    .line 222
    :cond_6
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    const-class v4, Lcom/mobisage/android/MobiSageActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 226
    if-eqz p2, :cond_d

    .line 227
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "vad"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    :goto_4
    const-string v3, "orientation"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 233
    const-string v4, "orientation"

    const-string v3, "orientation"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    :cond_7
    const-string v4, "lpg"

    const-string v3, "lpg"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v4, "adid"

    const-string v3, "adid"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v4, "adgroupid"

    const-string v3, "adgroupid"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string/jumbo v4, "token"

    const-string/jumbo v3, "token"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v3, "pid"

    iget-object v4, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->publisherID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    if-eqz p3, :cond_8

    .line 241
    const-string v3, "adview_id"

    iget-object v4, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->adView:Lcom/mobisage/android/MobiSageAdView;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    :cond_8
    iget-object v3, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->customData:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 246
    const-string v3, "customdata"

    iget-object v4, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->customData:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    :cond_9
    iget-object v3, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 248
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "com.mobisage.android.MobiSageActivity not found"

    invoke-static {v3, v4}, Lcom/mobisage/android/MobiSageLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 252
    if-eqz p3, :cond_0

    .line 253
    sget-object v3, Lcom/mobisage/android/MobiSageActivity;->sAdViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->adView:Lcom/mobisage/android/MobiSageAdView;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 199
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_a
    iget-object v3, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v4, "Token"

    iget-object v5, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->token:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 203
    :cond_b
    iget-object v3, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v4, "AdID"

    iget-object v5, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->adID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 207
    :cond_c
    iget-object v3, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v4, "AdGroupID"

    iget-object v5, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->adGroupID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 229
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_d
    :try_start_1
    const-string/jumbo v3, "type"

    const-string v4, "ad"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method


# virtual methods
.method public adtrack(Ljava/lang/String;)V
    .locals 6
    .param p1, "trackStr"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 147
    :try_start_0
    invoke-static {p1}, Lcom/mobisage/android/MobiSageURIUtility;->parserTrackURL(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 149
    .local v2, "trackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 150
    .local v3, "trackUrl":Ljava/lang/String;
    new-instance v0, Lcom/mobisage/android/MobiSageAction;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageAction;-><init>()V

    .line 151
    .local v0, "action":Lcom/mobisage/android/MobiSageAction;
    iget-object v4, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string/jumbo v5, "trackUrl"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/mobisage/android/MobiSageTrackModule;->getInstance()Lcom/mobisage/android/MobiSageTrackModule;

    move-result-object v4

    const/16 v5, 0x7db

    invoke-virtual {v4, v5, v0}, Lcom/mobisage/android/MobiSageTrackModule;->pushMobiSageAction(ILcom/mobisage/android/MobiSageAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    .end local v0    # "action":Lcom/mobisage/android/MobiSageAction;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "trackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "trackUrl":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 157
    :cond_0
    return-void
.end method

.method public clickAd(Ljava/lang/String;)V
    .locals 12
    .param p1, "trackStr"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "clickAd"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mobisage/android/MobiSageLog;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 263
    iget-object v9, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->listener:Lcom/mobisage/android/IMobiSageAdViewListener;

    if-eqz v9, :cond_0

    .line 264
    iget-object v9, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->listener:Lcom/mobisage/android/IMobiSageAdViewListener;

    iget-object v10, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->adView:Lcom/mobisage/android/MobiSageAdView;

    invoke-interface {v9, v10}, Lcom/mobisage/android/IMobiSageAdViewListener;->onMobiSageAdViewClick(Lcom/mobisage/android/MobiSageAdView;)V

    .line 266
    :cond_0
    invoke-static {p1}, Lcom/mobisage/android/MobiSageURIUtility;->parserURIQuery(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v7

    .line 269
    .local v7, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "pack"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 270
    const-string v9, "pack"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 271
    .local v6, "packageName":Ljava/lang/String;
    const-string v9, "adgroupid"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 272
    .local v2, "adgroupid":Ljava/lang/String;
    const-string v9, "adid"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 273
    .local v1, "adcreativeid":Ljava/lang/String;
    const-string/jumbo v9, "token"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 274
    .local v8, "token":Ljava/lang/String;
    const-string v9, "iso"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 275
    .local v4, "iso":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 277
    .local v5, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v9, "pack"

    invoke-virtual {v5, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    const-string v9, "adgroupid"

    invoke-virtual {v5, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    const-string v9, "adid"

    invoke-virtual {v5, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    const-string/jumbo v9, "token"

    invoke-virtual {v5, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    const-string v9, "iso"

    invoke-virtual {v5, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    const-string v9, "pid"

    iget-object v10, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->publisherID:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    invoke-static {v6, v5}, Lcom/mobisage/android/MobiSageAdModuleHelper;->saveJSON(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v1    # "adcreativeid":Ljava/lang/String;
    .end local v2    # "adgroupid":Ljava/lang/String;
    .end local v4    # "iso":Ljava/lang/String;
    .end local v5    # "jsonObj":Lorg/json/JSONObject;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "token":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v9, "eventtype"

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v9, "action"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 292
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 310
    :goto_1
    return-void

    .line 284
    .end local v0    # "action":I
    .restart local v1    # "adcreativeid":Ljava/lang/String;
    .restart local v2    # "adgroupid":Ljava/lang/String;
    .restart local v4    # "iso":Ljava/lang/String;
    .restart local v5    # "jsonObj":Lorg/json/JSONObject;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v8    # "token":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 285
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 294
    .end local v1    # "adcreativeid":Ljava/lang/String;
    .end local v2    # "adgroupid":Ljava/lang/String;
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v4    # "iso":Ljava/lang/String;
    .end local v5    # "jsonObj":Lorg/json/JSONObject;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "token":Ljava/lang/String;
    .restart local v0    # "action":I
    :pswitch_0
    invoke-direct {p0, v7}, Lcom/mobisage/android/MobiSageJavascriptAgent;->processActionWebbrowser(Ljava/util/HashMap;)V

    goto :goto_1

    .line 297
    :pswitch_1
    invoke-direct {p0, v7}, Lcom/mobisage/android/MobiSageJavascriptAgent;->processAPKDownloadActionAlert(Ljava/util/HashMap;)V

    goto :goto_1

    .line 300
    :pswitch_2
    invoke-direct {p0, v7}, Lcom/mobisage/android/MobiSageJavascriptAgent;->processActionClickToCall(Ljava/util/HashMap;)V

    goto :goto_1

    .line 303
    :pswitch_3
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {p0, v7, v9, v10}, Lcom/mobisage/android/MobiSageJavascriptAgent;->processWebpageActivity(Ljava/util/HashMap;ZZ)V

    goto :goto_1

    .line 306
    :pswitch_4
    invoke-direct {p0, v7}, Lcom/mobisage/android/MobiSageJavascriptAgent;->processSendSMS(Ljava/util/HashMap;)V

    goto :goto_1

    .line 292
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public clickVideo(Ljava/lang/String;)V
    .locals 5
    .param p1, "trackStr"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 129
    invoke-static {p1}, Lcom/mobisage/android/MobiSageURIUtility;->parserURIQuery(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 131
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "eventtype"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v2, "action"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 135
    .local v0, "action":I
    if-ne v0, v4, :cond_1

    .line 136
    iget-object v2, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->listener:Lcom/mobisage/android/IMobiSageAdViewListener;

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->listener:Lcom/mobisage/android/IMobiSageAdViewListener;

    iget-object v3, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->adView:Lcom/mobisage/android/MobiSageAdView;

    invoke-interface {v2, v3}, Lcom/mobisage/android/IMobiSageAdViewListener;->onMobiSageAdViewClick(Lcom/mobisage/android/MobiSageAdView;)V

    .line 139
    :cond_0
    invoke-direct {p0, v1, v4, v4}, Lcom/mobisage/android/MobiSageJavascriptAgent;->processWebpageActivity(Ljava/util/HashMap;ZZ)V

    .line 141
    :cond_1
    return-void
.end method

.method public closeWindow()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->closeHanler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 107
    return-void
.end method

.method public destoryJavascriptAgent()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->closeHanler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 68
    iput-object v1, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->context:Landroid/content/Context;

    .line 69
    iput-object v1, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->listener:Lcom/mobisage/android/IMobiSageAdViewListener;

    .line 70
    iput-object v1, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->adView:Lcom/mobisage/android/MobiSageAdView;

    .line 71
    return-void
.end method

.method public deviceinfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 59
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 60
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 61
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 62
    iget-object v1, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->closeHanler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    return-void
.end method

.method public getScreenHeight()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->adView:Lcom/mobisage/android/MobiSageAdView;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageAdView;->getRealHeight()I

    move-result v0

    return v0
.end method

.method public getScreenWidth()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->adView:Lcom/mobisage/android/MobiSageAdView;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageAdView;->getRealWidth()I

    move-result v0

    return v0
.end method

.method public onWebClickAd(Ljava/lang/String;)V
    .locals 5
    .param p1, "trackStr"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 334
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onWebClickAd"

    invoke-static {v2, v3}, Lcom/mobisage/android/MobiSageLog;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 338
    invoke-static {p1}, Lcom/mobisage/android/MobiSageURIUtility;->parserURIQuery(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 341
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "eventtype"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v2, "action"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 345
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 359
    :goto_0
    return-void

    .line 347
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/mobisage/android/MobiSageJavascriptAgent;->processActionWebbrowser(Ljava/util/HashMap;)V

    goto :goto_0

    .line 350
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/mobisage/android/MobiSageJavascriptAgent;->processAPKDownloadActionAlert(Ljava/util/HashMap;)V

    goto :goto_0

    .line 353
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/mobisage/android/MobiSageJavascriptAgent;->processActionCallInWeb(Ljava/util/HashMap;)V

    goto :goto_0

    .line 356
    :pswitch_3
    invoke-direct {p0, v1, v4, v4}, Lcom/mobisage/android/MobiSageJavascriptAgent;->processWebpageActivity(Ljava/util/HashMap;ZZ)V

    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public requestControl(Ljava/lang/String;)V
    .locals 4
    .param p1, "state"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 113
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 114
    .local v1, "flag":I
    if-nez v1, :cond_1

    .line 115
    iget-object v2, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->adView:Lcom/mobisage/android/MobiSageAdView;

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->adView:Lcom/mobisage/android/MobiSageAdView;

    const/4 v3, -0x1

    iput v3, v2, Lcom/mobisage/android/MobiSageAdView;->adViewState:I

    .line 124
    .end local v1    # "flag":I
    :cond_0
    :goto_0
    return-void

    .line 117
    .restart local v1    # "flag":I
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->adView:Lcom/mobisage/android/MobiSageAdView;

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->adView:Lcom/mobisage/android/MobiSageAdView;

    invoke-virtual {v2}, Lcom/mobisage/android/MobiSageAdView;->sendADRequest()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    .end local v1    # "flag":I
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 3
    .param p1, "color"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 85
    iget-object v1, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->closeHanler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 86
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 87
    iget-object v1, p0, Lcom/mobisage/android/MobiSageJavascriptAgent;->closeHanler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 88
    return-void
.end method
