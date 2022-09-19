.class Lcom/tudou/detail/DetailModel$LoaderTask$20;
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

.field final synthetic val$retSliders:Ljava/util/ArrayList;

.field final synthetic val$tOldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$20;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$20;->val$tOldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;

    iput-object p3, p0, Lcom/tudou/detail/DetailModel$LoaderTask$20;->val$retSliders:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1094
    iget-object v1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$20;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    iget-object v2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$20;->val$tOldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/tudou/detail/DetailModel$LoaderTask;->tryGetCallbacks(Lcom/tudou/detail/DetailModel$Callbacks;)Lcom/tudou/detail/DetailModel$Callbacks;

    move-result-object v0

    .line 1095
    .local v0, "callbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1096
    iget-object v1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$20;->val$retSliders:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/tudou/detail/DetailModel$Callbacks;->onBindSlider(Ljava/util/ArrayList;)V

    .line 1098
    :cond_0
    return-void
.end method
