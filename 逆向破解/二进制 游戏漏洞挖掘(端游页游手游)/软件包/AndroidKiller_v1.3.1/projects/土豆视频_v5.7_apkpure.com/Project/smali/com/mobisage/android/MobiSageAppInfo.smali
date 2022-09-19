.class public final Lcom/mobisage/android/MobiSageAppInfo;
.super Ljava/lang/Object;
.source "MobiSageAppInfo.java"


# static fields
.field public static activeTime:J

.field public static appContext:Landroid/content/Context;

.field public static appName:Ljava/lang/String;

.field public static appVersion:Ljava/lang/String;

.field public static deployChannel:Ljava/lang/String;

.field private static isInited:Z

.field private static mFoundActivity:Ljava/lang/Boolean;

.field private static mFoundReceiver:Ljava/lang/Boolean;

.field private static mFoundService:Ljava/lang/Boolean;

.field public static packageCacheDir:Ljava/lang/String;

.field public static packageDataDir:Ljava/lang/String;

.field public static packageName:Ljava/lang/String;

.field public static publisherID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    const-string v0, ""

    sput-object v0, Lcom/mobisage/android/MobiSageAppInfo;->publisherID:Ljava/lang/String;

    .line 21
    const-string v0, ""

    sput-object v0, Lcom/mobisage/android/MobiSageAppInfo;->deployChannel:Ljava/lang/String;

    .line 22
    const-string v0, ""

    sput-object v0, Lcom/mobisage/android/MobiSageAppInfo;->packageName:Ljava/lang/String;

    .line 23
    const-string v0, ""

    sput-object v0, Lcom/mobisage/android/MobiSageAppInfo;->appName:Ljava/lang/String;

    .line 24
    const-string v0, ""

    sput-object v0, Lcom/mobisage/android/MobiSageAppInfo;->appVersion:Ljava/lang/String;

    .line 25
    sput-object v2, Lcom/mobisage/android/MobiSageAppInfo;->packageCacheDir:Ljava/lang/String;

    .line 26
    sput-object v2, Lcom/mobisage/android/MobiSageAppInfo;->packageDataDir:Ljava/lang/String;

    .line 28
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mobisage/android/MobiSageAppInfo;->activeTime:J

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mobisage/android/MobiSageAppInfo;->isInited:Z

    .line 31
    sput-object v2, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    .line 87
    sput-object v2, Lcom/mobisage/android/MobiSageAppInfo;->mFoundService:Ljava/lang/Boolean;

    .line 114
    sput-object v2, Lcom/mobisage/android/MobiSageAppInfo;->mFoundActivity:Ljava/lang/Boolean;

    .line 142
    sput-object v2, Lcom/mobisage/android/MobiSageAppInfo;->mFoundReceiver:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final initMobiSageInfo(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    sget-boolean v5, Lcom/mobisage/android/MobiSageAppInfo;->isInited:Z

    if-eqz v5, :cond_0

    .line 35
    sget-boolean v5, Lcom/mobisage/android/MobiSageAppInfo;->isInited:Z

    .line 84
    :goto_0
    return v5

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sput-object v5, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 39
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 41
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 43
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 50
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "Mobisage_channel"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/mobisage/android/MobiSageAppInfo;->deployChannel:Ljava/lang/String;

    .line 51
    sget-object v5, Lcom/mobisage/android/MobiSageAppInfo;->deployChannel:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 52
    const-string v5, "mobiSageSDK"

    sput-object v5, Lcom/mobisage/android/MobiSageAppInfo;->deployChannel:Ljava/lang/String;

    .line 54
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/mobisage/android/MobiSageAppInfo;->packageName:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 57
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v5, Lcom/mobisage/android/MobiSageAppInfo;->appVersion:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/mobisage/android/MobiSageAppInfo;->appName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 66
    .local v2, "dir":Ljava/io/File;
    if-eqz v2, :cond_3

    .line 67
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/mobisage/android/MobiSageAppInfo;->packageCacheDir:Ljava/lang/String;

    .line 71
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 72
    if-eqz v2, :cond_4

    .line 73
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/mobisage/android/MobiSageAppInfo;->packageDataDir:Ljava/lang/String;

    .line 78
    :goto_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-lt v5, v6, :cond_2

    .line 79
    sget-object v5, Lcom/mobisage/android/MobiSageAppInfo;->appContext:Landroid/content/Context;

    new-instance v6, Lcom/mobisage/android/MobiSageApkReceiver;

    invoke-direct {v6}, Lcom/mobisage/android/MobiSageApkReceiver;-><init>()V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    :cond_2
    const/4 v5, 0x1

    sput-boolean v5, Lcom/mobisage/android/MobiSageAppInfo;->isInited:Z

    .line 84
    sget-boolean v5, Lcom/mobisage/android/MobiSageAppInfo;->isInited:Z

    goto :goto_0

    .line 69
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mobisage/android/MobiSageAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/cache"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/mobisage/android/MobiSageAppInfo;->packageCacheDir:Ljava/lang/String;

    goto :goto_2

    .line 75
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/data/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mobisage/android/MobiSageAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/files"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/mobisage/android/MobiSageAppInfo;->packageDataDir:Ljava/lang/String;

    goto :goto_3

    .line 62
    .end local v2    # "dir":Ljava/io/File;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 60
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public static mobiSageActivityNotFound(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 123
    sget-object v3, Lcom/mobisage/android/MobiSageAppInfo;->mFoundActivity:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 124
    sget-object v3, Lcom/mobisage/android/MobiSageAppInfo;->mFoundActivity:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 139
    :goto_0
    return v3

    .line 126
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 127
    .local v1, "localPackageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/mobisage/android/MobiSageActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v0, "localIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 132
    .local v2, "localResolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/mobisage/android/MobiSageAppInfo;->mFoundActivity:Ljava/lang/Boolean;

    .line 133
    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_2

    .line 135
    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/mobisage/android/MobiSageAppInfo;->mFoundActivity:Ljava/lang/Boolean;

    .line 139
    :goto_1
    sget-object v3, Lcom/mobisage/android/MobiSageAppInfo;->mFoundActivity:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 137
    :cond_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/mobisage/android/MobiSageAppInfo;->mFoundActivity:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public static mobiSageReceiverNotFound(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 145
    sget-object v3, Lcom/mobisage/android/MobiSageAppInfo;->mFoundReceiver:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 146
    sget-object v3, Lcom/mobisage/android/MobiSageAppInfo;->mFoundReceiver:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 164
    :goto_0
    return v3

    .line 148
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 149
    .local v2, "localPackageManager":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 150
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/mobisage/android/MobiSageAppInfo;->mFoundReceiver:Ljava/lang/Boolean;

    .line 152
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.mobisage.android.MobiSageAdReceiver"

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 159
    :goto_1
    if-eqz v0, :cond_1

    if-nez v0, :cond_2

    .line 160
    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/mobisage/android/MobiSageAppInfo;->mFoundReceiver:Ljava/lang/Boolean;

    .line 164
    :goto_2
    sget-object v3, Lcom/mobisage/android/MobiSageAppInfo;->mFoundReceiver:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/mobisage/android/MobiSageAppInfo;->mFoundReceiver:Ljava/lang/Boolean;

    goto :goto_1

    .line 162
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/mobisage/android/MobiSageAppInfo;->mFoundReceiver:Ljava/lang/Boolean;

    goto :goto_2
.end method

.method public static mobiSageServiceNotFound(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 96
    sget-object v3, Lcom/mobisage/android/MobiSageAppInfo;->mFoundService:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 97
    sget-object v3, Lcom/mobisage/android/MobiSageAppInfo;->mFoundService:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 111
    :goto_0
    return v3

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 100
    .local v1, "localPackageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/mobisage/android/MobiSageApkService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    const/16 v3, 0x40

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 105
    .local v2, "serviceInfo":Landroid/content/pm/ResolveInfo;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/mobisage/android/MobiSageAppInfo;->mFoundService:Ljava/lang/Boolean;

    .line 106
    if-eqz v2, :cond_1

    .line 107
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/mobisage/android/MobiSageAppInfo;->mFoundService:Ljava/lang/Boolean;

    .line 111
    :goto_1
    sget-object v3, Lcom/mobisage/android/MobiSageAppInfo;->mFoundService:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 109
    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/mobisage/android/MobiSageAppInfo;->mFoundService:Ljava/lang/Boolean;

    goto :goto_1
.end method
