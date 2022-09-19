.class Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2$1;
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

.field final synthetic val$results:Ljava/util/ArrayList;

.field final synthetic val$totalCount:I


# direct methods
.method constructor <init>(Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;ILjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2$1;->this$1:Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;

    iput p2, p0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2$1;->val$totalCount:I

    iput-object p3, p0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2$1;->val$results:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2$1;->this$1:Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;

    iget-object v0, v0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;->val$callBack:Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;

    iget v1, p0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2$1;->val$totalCount:I

    iget-object v2, p0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2$1;->val$results:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;->onLoadServerDataSuccess(ILjava/util/ArrayList;)V

    .line 196
    return-void
.end method
