.class Lcom/youku/player/request/OnlineVideoRequest$2;
.super Ljava/lang/Object;
.source "OnlineVideoRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/request/OnlineVideoRequest;->processDRMToken(Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/drm/DRMTokenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/request/OnlineVideoRequest;

.field final synthetic val$callback:Lcom/youku/player/drm/DRMTokenCallback;

.field final synthetic val$videoInfo:Lcom/youku/player/module/VideoUrlInfo;


# direct methods
.method constructor <init>(Lcom/youku/player/request/OnlineVideoRequest;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/drm/DRMTokenCallback;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/youku/player/request/OnlineVideoRequest$2;->this$0:Lcom/youku/player/request/OnlineVideoRequest;

    iput-object p2, p0, Lcom/youku/player/request/OnlineVideoRequest$2;->val$videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-object p3, p0, Lcom/youku/player/request/OnlineVideoRequest$2;->val$callback:Lcom/youku/player/drm/DRMTokenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 136
    const/4 v3, 0x0

    .line 138
    .local v3, "result":Z
    :try_start_0
    new-instance v0, Lcom/youku/player/drm/MarlinDrmManager;

    sget-object v4, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/youku/player/drm/MarlinDrmManager;-><init>(Landroid/content/Context;)V

    .line 140
    .local v0, "drmManager":Lcom/youku/player/drm/MarlinDrmManager;
    iget-object v4, p0, Lcom/youku/player/request/OnlineVideoRequest$2;->val$videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getMarlinToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/youku/player/drm/MarlinDrmManager;->acquireLicense(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 145
    .end local v0    # "drmManager":Lcom/youku/player/drm/MarlinDrmManager;
    :goto_0
    move v1, v3

    .line 146
    .local v1, "drmResult":Z
    new-instance v4, Lcom/youku/player/util/MainThreadExecutor;

    invoke-direct {v4}, Lcom/youku/player/util/MainThreadExecutor;-><init>()V

    new-instance v5, Lcom/youku/player/request/OnlineVideoRequest$2$1;

    invoke-direct {v5, p0, v1}, Lcom/youku/player/request/OnlineVideoRequest$2$1;-><init>(Lcom/youku/player/request/OnlineVideoRequest$2;Z)V

    invoke-virtual {v4, v5}, Lcom/youku/player/util/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 157
    return-void

    .line 142
    .end local v1    # "drmResult":Z
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
