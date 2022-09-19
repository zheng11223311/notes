.class Lcom/youku/player/request/SyncPlayRequest$1$1;
.super Ljava/lang/Object;
.source "SyncPlayRequest.java"

# interfaces
.implements Lcom/youku/player/goplay/IGetAdvCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/request/SyncPlayRequest$1;->onSuccess(Lcom/youku/player/module/VideoUrlInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/request/SyncPlayRequest$1;

.field final synthetic val$videoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;


# direct methods
.method constructor <init>(Lcom/youku/player/request/SyncPlayRequest$1;Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/youku/player/request/SyncPlayRequest$1$1;->this$1:Lcom/youku/player/request/SyncPlayRequest$1;

    iput-object p2, p0, Lcom/youku/player/request/SyncPlayRequest$1$1;->val$videoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/youku/player/goplay/GoplayException;)V
    .locals 4
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/youku/player/request/SyncPlayRequest$1$1;->this$1:Lcom/youku/player/request/SyncPlayRequest$1;

    iget-object v0, v0, Lcom/youku/player/request/SyncPlayRequest$1;->this$0:Lcom/youku/player/request/SyncPlayRequest;

    iget-object v1, p0, Lcom/youku/player/request/SyncPlayRequest$1$1;->this$1:Lcom/youku/player/request/SyncPlayRequest$1;

    iget-object v1, v1, Lcom/youku/player/request/SyncPlayRequest$1;->val$listener:Lcom/youku/player/request/OnRequestDoneListener;

    iget-object v2, p0, Lcom/youku/player/request/SyncPlayRequest$1$1;->val$videoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/youku/player/request/SyncPlayRequest;->access$000(Lcom/youku/player/request/SyncPlayRequest;Lcom/youku/player/request/OnRequestDoneListener;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/VideoAdvInfo;)V

    .line 41
    return-void
.end method

.method public onSuccess(Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 3
    .param p1, "videoAdvInfo"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/player/request/SyncPlayRequest$1$1;->this$1:Lcom/youku/player/request/SyncPlayRequest$1;

    iget-object v0, v0, Lcom/youku/player/request/SyncPlayRequest$1;->this$0:Lcom/youku/player/request/SyncPlayRequest;

    iget-object v1, p0, Lcom/youku/player/request/SyncPlayRequest$1$1;->this$1:Lcom/youku/player/request/SyncPlayRequest$1;

    iget-object v1, v1, Lcom/youku/player/request/SyncPlayRequest$1;->val$listener:Lcom/youku/player/request/OnRequestDoneListener;

    iget-object v2, p0, Lcom/youku/player/request/SyncPlayRequest$1$1;->val$videoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v0, v1, v2, p1}, Lcom/youku/player/request/SyncPlayRequest;->access$000(Lcom/youku/player/request/SyncPlayRequest;Lcom/youku/player/request/OnRequestDoneListener;Lcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/goplay/VideoAdvInfo;)V

    .line 36
    return-void
.end method
