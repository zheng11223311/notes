.class Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2$3;
.super Ljava/lang/Object;
.source "PlayhistoryManagerImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;->onFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;

.field final synthetic val$failReason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2$3;->this$1:Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;

    iput-object p2, p0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2$3;->val$failReason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2$3;->this$1:Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;

    iget-object v0, v0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;->val$callBack:Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;

    iget-object v1, p0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2$3;->val$failReason:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;->onLoadServerDataFailed(Ljava/lang/String;)V

    .line 214
    return-void
.end method
