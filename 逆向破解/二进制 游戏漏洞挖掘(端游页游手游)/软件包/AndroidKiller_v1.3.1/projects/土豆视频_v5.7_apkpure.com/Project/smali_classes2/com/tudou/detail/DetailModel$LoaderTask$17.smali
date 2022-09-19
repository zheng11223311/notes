.class Lcom/tudou/detail/DetailModel$LoaderTask$17;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel$LoaderTask;->loadAndBindPlaylist(Lcom/youku/vo/NewVideoDetail;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

.field final synthetic val$fSuccess:Z

.field final synthetic val$tOldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;

.field final synthetic val$tVideoList:Lcom/tudou/detail/vo/VideoList;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;ZLcom/tudou/detail/vo/VideoList;)V
    .locals 0

    .prologue
    .line 964
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$17;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$17;->val$tOldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;

    iput-boolean p3, p0, Lcom/tudou/detail/DetailModel$LoaderTask$17;->val$fSuccess:Z

    iput-object p4, p0, Lcom/tudou/detail/DetailModel$LoaderTask$17;->val$tVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 967
    iget-object v1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$17;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    iget-object v2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$17;->val$tOldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/tudou/detail/DetailModel$LoaderTask;->tryGetCallbacks(Lcom/tudou/detail/DetailModel$Callbacks;)Lcom/tudou/detail/DetailModel$Callbacks;

    move-result-object v0

    .line 968
    .local v0, "callbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    if-eqz v0, :cond_0

    .line 969
    iget-boolean v1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$17;->val$fSuccess:Z

    iget-object v2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$17;->val$tVideoList:Lcom/tudou/detail/vo/VideoList;

    invoke-interface {v0, v1, v2}, Lcom/tudou/detail/DetailModel$Callbacks;->onBindVideoList(ZLcom/tudou/detail/vo/VideoList;)V

    .line 971
    :cond_0
    return-void
.end method
