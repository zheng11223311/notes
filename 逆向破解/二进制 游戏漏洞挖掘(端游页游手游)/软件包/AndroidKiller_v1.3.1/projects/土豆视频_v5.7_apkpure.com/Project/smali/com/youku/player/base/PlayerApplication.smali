.class public Lcom/youku/player/base/PlayerApplication;
.super Landroid/app/Application;
.source "PlayerApplication.java"


# static fields
.field private static mApplication:Lcom/youku/player/base/PlayerApplication;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 16
    sput-object p0, Lcom/youku/player/base/PlayerApplication;->mApplication:Lcom/youku/player/base/PlayerApplication;

    .line 17
    return-void
.end method

.method public static getPlayerApplicationInstance()Lcom/youku/player/base/PlayerApplication;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/youku/player/base/PlayerApplication;->mApplication:Lcom/youku/player/base/PlayerApplication;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/youku/player/base/PlayerApplication;

    invoke-direct {v0}, Lcom/youku/player/base/PlayerApplication;-><init>()V

    sput-object v0, Lcom/youku/player/base/PlayerApplication;->mApplication:Lcom/youku/player/base/PlayerApplication;

    .line 22
    sget-object v0, Lcom/youku/player/base/PlayerApplication;->mApplication:Lcom/youku/player/base/PlayerApplication;

    .line 24
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/youku/player/base/PlayerApplication;->mApplication:Lcom/youku/player/base/PlayerApplication;

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 13
    return-void
.end method
