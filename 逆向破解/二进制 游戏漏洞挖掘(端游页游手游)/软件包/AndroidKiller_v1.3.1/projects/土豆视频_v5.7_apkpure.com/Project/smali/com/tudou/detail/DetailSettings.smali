.class public Lcom/tudou/detail/DetailSettings;
.super Ljava/lang/Object;
.source "DetailSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/DetailSettings$SettingNotFoundException;,
        Lcom/tudou/detail/DetailSettings$DetailProp;,
        Lcom/tudou/detail/DetailSettings$NameValuePreference;,
        Lcom/tudou/detail/DetailSettings$NameValueCache;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/tudou/detail/DetailSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/DetailSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/tudou/detail/DetailSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method
