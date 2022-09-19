.class public Lcom/youku/player/PlayerNetCache;
.super Ljava/lang/Object;
.source "PlayerNetCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/PlayerNetCache$SingletonHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static getInstance()Lcom/youku/player/PlayerNetCache;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/youku/player/PlayerNetCache$SingletonHolder;->INSTANCE:Lcom/youku/player/PlayerNetCache;

    return-object v0
.end method


# virtual methods
.method public dnsPreParse()V
    .locals 0

    .prologue
    .line 32
    invoke-static {}, Lcom/youku/uplayer/NetCache;->DNSPreParse()V

    .line 33
    return-void
.end method

.method public reset(Ljava/lang/String;J)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "capacity"    # J

    .prologue
    .line 44
    invoke-static {}, Lcom/youku/uplayer/NetCache;->stop()V

    .line 45
    invoke-static {p1, p2, p3}, Lcom/youku/uplayer/NetCache;->start(Ljava/lang/String;J)I

    .line 46
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p1}, Lcom/youku/uplayer/NetCache;->SetUserAgent(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public start(Ljava/lang/String;J)I
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "capacity"    # J

    .prologue
    .line 21
    invoke-static {p1, p2, p3}, Lcom/youku/uplayer/NetCache;->start(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 25
    invoke-static {}, Lcom/youku/uplayer/NetCache;->stop()V

    .line 26
    return-void
.end method
