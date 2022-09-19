.class Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2$2;
.super Ljava/lang/Object;
.source "PlayhistoryManagerImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;->onSuccess(Lcom/youku/network/HttpRequestManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;


# direct methods
.method constructor <init>(Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2$2;->this$1:Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2$2;->this$1:Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;

    iget-object v0, v0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;->val$callBack:Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;->onLoadServerDataFailed(Ljava/lang/String;)V

    .line 203
    return-void
.end method
