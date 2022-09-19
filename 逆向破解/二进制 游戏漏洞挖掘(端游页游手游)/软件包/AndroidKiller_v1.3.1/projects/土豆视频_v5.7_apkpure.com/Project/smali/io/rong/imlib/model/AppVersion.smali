.class public Lio/rong/imlib/model/AppVersion;
.super Ljava/lang/Object;
.source "AppVersion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/imlib/model/AppVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private AppId:Ljava/lang/String;

.field private AppKey:Ljava/lang/String;

.field private AppVersionCode:I

.field private PushVersionCode:I

.field private SDKVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lio/rong/imlib/model/AppVersion$1;

    invoke-direct {v0}, Lio/rong/imlib/model/AppVersion$1;-><init>()V

    sput-object v0, Lio/rong/imlib/model/AppVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 24
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "RONG_CLOUD_APP_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 25
    :cond_0
    const-string v1, ""

    invoke-virtual {p0, v1}, Lio/rong/imlib/model/AppVersion;->setAppKey(Ljava/lang/String;)V

    .line 29
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/rong/imlib/model/AppVersion;->setAppId(Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1}, Lio/rong/imlib/model/AppVersion;->getVersionCode(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Lio/rong/imlib/model/AppVersion;->setAppVersionCode(I)V

    .line 31
    const/16 v1, 0x4e21

    invoke-virtual {p0, v1}, Lio/rong/imlib/model/AppVersion;->setSDKVersionCode(I)V

    .line 32
    sget v1, Lio/rong/push/PushConst;->VERSION:I

    invoke-virtual {p0, v1}, Lio/rong/imlib/model/AppVersion;->setPushVersionCode(I)V

    .line 33
    return-void

    .line 27
    :cond_1
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "RONG_CLOUD_APP_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/rong/imlib/model/AppVersion;->setAppKey(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/AppVersion;->setAppId(Ljava/lang/String;)V

    .line 53
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/AppVersion;->setAppKey(Ljava/lang/String;)V

    .line 54
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/AppVersion;->setAppVersionCode(I)V

    .line 55
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/AppVersion;->setSDKVersionCode(I)V

    .line 56
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/AppVersion;->setPushVersionCode(I)V

    .line 57
    return-void
.end method

.method private getVersionCode(Landroid/content/Context;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 37
    const/4 v1, 0x0

    .line 39
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 44
    :goto_0
    if-nez v1, :cond_0

    .line 47
    :goto_1
    return v2

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 47
    .end local v0    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lio/rong/imlib/model/AppVersion;->AppId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lio/rong/imlib/model/AppVersion;->AppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionCode()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lio/rong/imlib/model/AppVersion;->AppVersionCode:I

    return v0
.end method

.method public getPushVersionCode()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lio/rong/imlib/model/AppVersion;->PushVersionCode:I

    return v0
.end method

.method public getSDKVersionCode()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lio/rong/imlib/model/AppVersion;->SDKVersionCode:I

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "AppId"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lio/rong/imlib/model/AppVersion;->AppId:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "AppKey"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lio/rong/imlib/model/AppVersion;->AppKey:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setAppVersionCode(I)V
    .locals 0
    .param p1, "AppVersionCode"    # I

    .prologue
    .line 110
    iput p1, p0, Lio/rong/imlib/model/AppVersion;->AppVersionCode:I

    .line 111
    return-void
.end method

.method public setPushVersionCode(I)V
    .locals 0
    .param p1, "PushVersionCode"    # I

    .prologue
    .line 126
    iput p1, p0, Lio/rong/imlib/model/AppVersion;->PushVersionCode:I

    .line 127
    return-void
.end method

.method public setSDKVersionCode(I)V
    .locals 0
    .param p1, "SDKVersionCode"    # I

    .prologue
    .line 118
    iput p1, p0, Lio/rong/imlib/model/AppVersion;->SDKVersionCode:I

    .line 119
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 67
    invoke-virtual {p0}, Lio/rong/imlib/model/AppVersion;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lio/rong/imlib/model/AppVersion;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lio/rong/imlib/model/AppVersion;->getAppVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 70
    invoke-virtual {p0}, Lio/rong/imlib/model/AppVersion;->getSDKVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 71
    invoke-virtual {p0}, Lio/rong/imlib/model/AppVersion;->getPushVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 72
    return-void
.end method
