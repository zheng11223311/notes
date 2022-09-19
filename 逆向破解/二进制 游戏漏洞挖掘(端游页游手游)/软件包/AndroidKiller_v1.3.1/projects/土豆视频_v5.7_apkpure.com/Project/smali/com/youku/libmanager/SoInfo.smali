.class public Lcom/youku/libmanager/SoInfo;
.super Ljava/lang/Object;
.source "SoInfo.java"


# instance fields
.field arch:Ljava/lang/String;

.field download_url:Ljava/lang/String;

.field is_forced_upgrade:Ljava/lang/Boolean;

.field md5:Ljava/lang/String;

.field name:Ljava/lang/String;

.field needDownload:Ljava/lang/Boolean;

.field os:Ljava/lang/String;

.field pid_white_list:Ljava/lang/String;

.field product:Ljava/lang/String;

.field relativeSo:Ljava/lang/String;

.field updateAll:Ljava/lang/String;

.field versionCode:I

.field versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/libmanager/SoInfo;->needDownload:Ljava/lang/Boolean;

    return-void
.end method
