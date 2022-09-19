.class public Lcn/com/mma/mobile/tracking/OpenUDID_manager;
.super Ljava/lang/Object;
.source "OpenUDID_manager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/mma/mobile/tracking/OpenUDID_manager$1;,
        Lcn/com/mma/mobile/tracking/OpenUDID_manager$ValueComparator;
    }
.end annotation


# static fields
.field private static final LOG:Z = false

.field private static OpenUDID:Ljava/lang/String; = null

.field public static final PREFS_NAME:Ljava/lang/String; = "openudid_prefs"

.field public static final PREF_KEY:Ljava/lang/String; = "openudid"

.field public static final TAG:Ljava/lang/String; = "cn/com/mma/mobile/tracking/openudid"

.field private static mInitialized:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMatchingIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferences:Landroid/content/SharedPreferences;

.field private final mRandom:Ljava/util/Random;

.field private mReceivedOpenUDIDs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    sput-object v0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mInitialized:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "openudid_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mPreferences:Landroid/content/SharedPreferences;

    .line 33
    iput-object p1, p0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mContext:Landroid/content/Context;

    .line 34
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mRandom:Ljava/util/Random;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    .line 36
    return-void
.end method

.method static synthetic access$100(Lcn/com/mma/mobile/tracking/OpenUDID_manager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcn/com/mma/mobile/tracking/OpenUDID_manager;

    .prologue
    .line 17
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    return-object v0
.end method

.method private generateOpenUDID()V
    .locals 3

    .prologue
    .line 79
    iget-object v1, p0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    .line 80
    sget-object v1, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    const-string v2, "9774d56d682e549c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-ge v1, v2, :cond_1

    .line 82
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 83
    .local v0, "random":Ljava/security/SecureRandom;
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x40

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    .line 85
    .end local v0    # "random":Ljava/security/SecureRandom;
    :cond_1
    return-void
.end method

.method private getMostFrequentOpenUDID()V
    .locals 3

    .prologue
    .line 114
    iget-object v1, p0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcn/com/mma/mobile/tracking/OpenUDID_manager$ValueComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/com/mma/mobile/tracking/OpenUDID_manager$ValueComparator;-><init>(Lcn/com/mma/mobile/tracking/OpenUDID_manager;Lcn/com/mma/mobile/tracking/OpenUDID_manager$1;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 116
    .local v0, "sorted_OpenUDIDS":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 118
    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    .line 120
    .end local v0    # "sorted_OpenUDIDS":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method public static getOpenUDID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    sget-boolean v0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "cn/com/mma/mobile/tracking/openudid"

    const-string v1, "Initialisation isn\'t done"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    sget-object v0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    return-object v0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 140
    sget-boolean v0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mInitialized:Z

    return v0
.end method

.method private startService()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 92
    iget-object v2, p0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mMatchingIntents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 95
    iget-object v2, p0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mMatchingIntents:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 96
    .local v1, "servInfo":Landroid/content/pm/ServiceInfo;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 97
    .local v0, "i":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 98
    iget-object v2, p0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, p0, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 99
    iget-object v2, p0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mMatchingIntents:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 111
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "servInfo":Landroid/content/pm/ServiceInfo;
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-direct {p0}, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->getMostFrequentOpenUDID()V

    .line 104
    sget-object v2, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 105
    invoke-direct {p0}, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->generateOpenUDID()V

    .line 108
    :cond_1
    invoke-direct {p0}, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->storeOpenUDID()V

    .line 109
    sput-boolean v6, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mInitialized:Z

    goto :goto_0
.end method

.method private storeOpenUDID()V
    .locals 3

    .prologue
    .line 68
    iget-object v1, p0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 69
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v1, "openudid"

    sget-object v2, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    return-void
.end method

.method public static sync(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    new-instance v0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;

    invoke-direct {v0, p0}, Lcn/com/mma/mobile/tracking/OpenUDID_manager;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, "manager":Lcn/com/mma/mobile/tracking/OpenUDID_manager;
    iget-object v1, v0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "openudid"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    .line 153
    sget-object v1, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->OpenUDID:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "cn.com.mma.mobile.tracking.openudid.GETUDID"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mMatchingIntents:Ljava/util/List;

    .line 159
    iget-object v1, v0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mMatchingIntents:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 161
    invoke-direct {v0}, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->startService()V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mInitialized:Z

    goto :goto_0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 43
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 44
    .local v1, "data":Landroid/os/Parcel;
    iget-object v3, p0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mRandom:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 46
    .local v2, "reply":Landroid/os/Parcel;
    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p2, v3, v4, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 47
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 49
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "_openUDID":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 53
    iget-object v3, p0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    iget-object v3, p0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v0    # "_openUDID":Ljava/lang/String;
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 61
    invoke-direct {p0}, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->startService()V

    .line 62
    return-void

    .line 54
    .restart local v0    # "_openUDID":Ljava/lang/String;
    .restart local v1    # "data":Landroid/os/Parcel;
    .restart local v2    # "reply":Landroid/os/Parcel;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 58
    .end local v0    # "_openUDID":Ljava/lang/String;
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 65
    return-void
.end method
