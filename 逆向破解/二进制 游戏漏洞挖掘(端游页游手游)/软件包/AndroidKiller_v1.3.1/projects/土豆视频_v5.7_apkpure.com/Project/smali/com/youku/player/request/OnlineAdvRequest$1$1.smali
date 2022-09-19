.class Lcom/youku/player/request/OnlineAdvRequest$1$1;
.super Ljava/lang/Object;
.source "OnlineAdvRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/request/OnlineAdvRequest$1;->onSuccess(Lcom/youku/player/goplay/VideoAdvInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/request/OnlineAdvRequest$1;

.field final synthetic val$videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;


# direct methods
.method constructor <init>(Lcom/youku/player/request/OnlineAdvRequest$1;Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/youku/player/request/OnlineAdvRequest$1$1;->this$1:Lcom/youku/player/request/OnlineAdvRequest$1;

    iput-object p2, p0, Lcom/youku/player/request/OnlineAdvRequest$1$1;->val$videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/youku/player/request/OnlineAdvRequest$1$1;->val$videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v1, v1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 96
    sget-object v2, Lcom/youku/player/LogTag;->TAG_WO_VIDEO:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FrontADFinalURL="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/youku/player/request/OnlineAdvRequest$1$1;->val$videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v1, v1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/goplay/AdvInfo;

    iget-object v1, v1, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/youku/player/request/OnlineAdvRequest$1$1;->this$1:Lcom/youku/player/request/OnlineAdvRequest$1;

    iget-object v1, v1, Lcom/youku/player/request/OnlineAdvRequest$1;->val$listener:Lcom/youku/player/goplay/IGetAdvCallBack;

    iget-object v2, p0, Lcom/youku/player/request/OnlineAdvRequest$1$1;->val$videoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    invoke-interface {v1, v2}, Lcom/youku/player/goplay/IGetAdvCallBack;->onSuccess(Lcom/youku/player/goplay/VideoAdvInfo;)V

    .line 100
    return-void
.end method
