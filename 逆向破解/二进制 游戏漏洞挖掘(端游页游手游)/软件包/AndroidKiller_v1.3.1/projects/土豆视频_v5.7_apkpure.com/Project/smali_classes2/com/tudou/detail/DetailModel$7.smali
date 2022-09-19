.class Lcom/tudou/detail/DetailModel$7;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel;->getNextVideoAsyn(Lcom/youku/player/plugin/MediaPlayerDelegate;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/DetailModel;

.field final synthetic val$tCurVid:Ljava/lang/String;

.field final synthetic val$tNextVid:Ljava/lang/String;

.field final synthetic val$tResult:Z


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1489
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$7;->this$0:Lcom/tudou/detail/DetailModel;

    iput-boolean p2, p0, Lcom/tudou/detail/DetailModel$7;->val$tResult:Z

    iput-object p3, p0, Lcom/tudou/detail/DetailModel$7;->val$tCurVid:Ljava/lang/String;

    iput-object p4, p0, Lcom/tudou/detail/DetailModel$7;->val$tNextVid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$7;->this$0:Lcom/tudou/detail/DetailModel;

    iget-boolean v1, p0, Lcom/tudou/detail/DetailModel$7;->val$tResult:Z

    iget-object v2, p0, Lcom/tudou/detail/DetailModel$7;->val$tCurVid:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/detail/DetailModel$7;->val$tNextVid:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/tudou/detail/DetailModel;->access$1100(Lcom/tudou/detail/DetailModel;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1493
    return-void
.end method
