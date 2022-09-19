.class public Lcom/youku/player/drm/DRMServiceManager;
.super Ljava/lang/Object;
.source "DRMServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/drm/DRMServiceManager$1;,
        Lcom/youku/player/drm/DRMServiceManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "drm"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/player/drm/DRMServiceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/player/drm/DRMServiceManager$1;

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/youku/player/drm/DRMServiceManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/youku/player/drm/DRMServiceManager;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/youku/player/drm/DRMServiceManager$SingletonHolder;->INSTANCE:Lcom/youku/player/drm/DRMServiceManager;

    return-object v0
.end method


# virtual methods
.method public makeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "fileToPlay"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string v4, ""

    .line 89
    .local v4, "url":Ljava/lang/String;
    :try_start_0
    const-string v5, "drm"

    const-string v6, "PlaylistProxyService onStart"

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v2, Lcom/intertrust/wasabi/media/PlaylistProxy;

    invoke-direct {v2}, Lcom/intertrust/wasabi/media/PlaylistProxy;-><init>()V

    .line 91
    .local v2, "playlistProxy":Lcom/intertrust/wasabi/media/PlaylistProxy;
    invoke-virtual {v2}, Lcom/intertrust/wasabi/media/PlaylistProxy;->start()V

    .line 92
    new-instance v1, Lcom/intertrust/wasabi/media/PlaylistProxy$MediaSourceParams;

    invoke-direct {v1}, Lcom/intertrust/wasabi/media/PlaylistProxy$MediaSourceParams;-><init>()V

    .line 93
    .local v1, "params":Lcom/intertrust/wasabi/media/PlaylistProxy$MediaSourceParams;
    sget-object v3, Lcom/intertrust/wasabi/media/PlaylistProxy$MediaSourceType;->HLS:Lcom/intertrust/wasabi/media/PlaylistProxy$MediaSourceType;

    .line 94
    .local v3, "st":Lcom/intertrust/wasabi/media/PlaylistProxy$MediaSourceType;
    const-string v5, "drm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fileToPlay:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2, p1, v3, v1}, Lcom/intertrust/wasabi/media/PlaylistProxy;->makeUrl(Ljava/lang/String;Lcom/intertrust/wasabi/media/PlaylistProxy$MediaSourceType;Lcom/intertrust/wasabi/media/PlaylistProxy$MediaSourceParams;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/intertrust/wasabi/ErrorCodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 99
    .end local v1    # "params":Lcom/intertrust/wasabi/media/PlaylistProxy$MediaSourceParams;
    .end local v2    # "playlistProxy":Lcom/intertrust/wasabi/media/PlaylistProxy;
    .end local v3    # "st":Lcom/intertrust/wasabi/media/PlaylistProxy$MediaSourceType;
    :goto_0
    return-object v4

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Lcom/intertrust/wasabi/ErrorCodeException;
    invoke-virtual {v0}, Lcom/intertrust/wasabi/ErrorCodeException;->printStackTrace()V

    goto :goto_0
.end method
