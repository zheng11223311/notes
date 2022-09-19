.class Lcom/tudou/detail/DetailModel$LoaderTask$19;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel$LoaderTask;->loadAndBindDetailPageSlider()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/DetailModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel$LoaderTask;)V
    .locals 0

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$19;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1058
    iget-object v2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$19;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    iget-object v2, v2, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v2}, Lcom/tudou/detail/DetailModel;->access$100(Lcom/tudou/detail/DetailModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/DetailModel$Callbacks;

    .line 1059
    .local v1, "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    iget-object v2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$19;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    invoke-virtual {v2, v1}, Lcom/tudou/detail/DetailModel$LoaderTask;->tryGetCallbacks(Lcom/tudou/detail/DetailModel$Callbacks;)Lcom/tudou/detail/DetailModel$Callbacks;

    move-result-object v0

    .line 1060
    .local v0, "callbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1061
    if-eqz v0, :cond_0

    .line 1062
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/tudou/detail/DetailModel$LoaderTask$19;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    invoke-static {v3}, Lcom/tudou/detail/DetailModel$LoaderTask;->access$400(Lcom/tudou/detail/DetailModel$LoaderTask;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/detail/DetailModel$LoaderTask$19;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    invoke-static {v4}, Lcom/tudou/detail/DetailModel$LoaderTask;->access$500(Lcom/tudou/detail/DetailModel$LoaderTask;)Lcom/tudou/detail/vo/Interactive;

    move-result-object v4

    iget-object v4, v4, Lcom/tudou/detail/vo/Interactive;->mHtml5_1:Lcom/tudou/detail/vo/Interactive$Html5;

    invoke-interface {v0, v2, v3, v4}, Lcom/tudou/detail/DetailModel$Callbacks;->onBindHtml5Bar(ILjava/lang/String;Lcom/tudou/detail/vo/Interactive$Html5;)V

    .line 1067
    :cond_0
    return-void
.end method
