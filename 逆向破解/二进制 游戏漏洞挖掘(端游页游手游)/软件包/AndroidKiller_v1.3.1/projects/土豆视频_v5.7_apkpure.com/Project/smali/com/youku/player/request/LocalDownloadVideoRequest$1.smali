.class Lcom/youku/player/request/LocalDownloadVideoRequest$1;
.super Ljava/lang/Object;
.source "LocalDownloadVideoRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/request/LocalDownloadVideoRequest;->requestAdv(Lcom/youku/player/request/PlayRequest;Lcom/youku/player/module/PlayVideoInfo;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/IGetAdvCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/request/LocalDownloadVideoRequest;

.field final synthetic val$listener:Lcom/youku/player/goplay/IGetAdvCallBack;


# direct methods
.method constructor <init>(Lcom/youku/player/request/LocalDownloadVideoRequest;Lcom/youku/player/goplay/IGetAdvCallBack;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/youku/player/request/LocalDownloadVideoRequest$1;->this$0:Lcom/youku/player/request/LocalDownloadVideoRequest;

    iput-object p2, p0, Lcom/youku/player/request/LocalDownloadVideoRequest$1;->val$listener:Lcom/youku/player/goplay/IGetAdvCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/youku/player/request/LocalDownloadVideoRequest$1;->val$listener:Lcom/youku/player/goplay/IGetAdvCallBack;

    new-instance v1, Lcom/youku/player/goplay/GoplayException;

    invoke-direct {v1}, Lcom/youku/player/goplay/GoplayException;-><init>()V

    invoke-interface {v0, v1}, Lcom/youku/player/goplay/IGetAdvCallBack;->onFailed(Lcom/youku/player/goplay/GoplayException;)V

    .line 107
    return-void
.end method
