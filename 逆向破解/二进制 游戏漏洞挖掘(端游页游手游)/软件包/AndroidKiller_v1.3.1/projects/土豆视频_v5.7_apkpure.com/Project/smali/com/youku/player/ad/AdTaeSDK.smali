.class public Lcom/youku/player/ad/AdTaeSDK;
.super Ljava/lang/Object;
.source "AdTaeSDK.java"


# static fields
.field public static TAG:Ljava/lang/String;

.field public static isInitTaeSDK:Z

.field private static isInitializing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    const-string v0, "AdTaeSDK"

    sput-object v0, Lcom/youku/player/ad/AdTaeSDK;->TAG:Ljava/lang/String;

    .line 23
    sput-boolean v1, Lcom/youku/player/ad/AdTaeSDK;->isInitTaeSDK:Z

    .line 28
    sput-boolean v1, Lcom/youku/player/ad/AdTaeSDK;->isInitializing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initTaeSDK(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    return-void
.end method

.method public static showPage(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 87
    return-void
.end method
