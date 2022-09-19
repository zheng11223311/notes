.class Lcom/tudou/detail/DetailModel$LoaderTask$5;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel$LoaderTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

.field final synthetic val$oldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$5;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$5;->val$oldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 376
    iget-object v1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$5;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    iget-object v2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$5;->val$oldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/tudou/detail/DetailModel$LoaderTask;->tryGetCallbacks(Lcom/tudou/detail/DetailModel$Callbacks;)Lcom/tudou/detail/DetailModel$Callbacks;

    move-result-object v0

    .line 377
    .local v0, "callbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    if-eqz v0, :cond_0

    .line 378
    if-eqz v0, :cond_0

    .line 379
    iget-object v1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$5;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    invoke-static {v1}, Lcom/tudou/detail/DetailModel$LoaderTask;->access$600(Lcom/tudou/detail/DetailModel$LoaderTask;)Lcom/tudou/android/Youku$VideoType;

    move-result-object v1

    sget-object v2, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$5;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    invoke-static {v1}, Lcom/tudou/detail/DetailModel$LoaderTask;->access$700(Lcom/tudou/detail/DetailModel$LoaderTask;)Lcom/youku/vo/NewVideoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/NewVideoDetail;->getActorCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 380
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$5;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    invoke-static {v2}, Lcom/tudou/detail/DetailModel$LoaderTask;->access$700(Lcom/tudou/detail/DetailModel$LoaderTask;)Lcom/youku/vo/NewVideoDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v2, v2, Lcom/youku/vo/NewVideoDetail$Detail;->actors:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/tudou/detail/DetailModel$Callbacks;->onBindVideoActors(ZLjava/util/ArrayList;)V

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tudou/detail/DetailModel$Callbacks;->onBindVideoActors(ZLjava/util/ArrayList;)V

    goto :goto_0
.end method
