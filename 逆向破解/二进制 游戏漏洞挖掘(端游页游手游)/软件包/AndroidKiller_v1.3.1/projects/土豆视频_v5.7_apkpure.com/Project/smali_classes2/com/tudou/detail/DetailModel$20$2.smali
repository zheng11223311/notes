.class Lcom/tudou/detail/DetailModel$20$2;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel$20;->onSucess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/DetailModel$20;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel$20;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2145
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$20$2;->this$1:Lcom/tudou/detail/DetailModel$20;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$20$2;->val$uid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$20$2;->this$1:Lcom/tudou/detail/DetailModel$20;

    iget-object v0, v0, Lcom/tudou/detail/DetailModel$20;->val$r:Lcom/tudou/detail/DetailModel$OnSetAttentionComplete;

    iget-object v1, p0, Lcom/tudou/detail/DetailModel$20$2;->this$1:Lcom/tudou/detail/DetailModel$20;

    iget-object v1, v1, Lcom/tudou/detail/DetailModel$20;->val$detail:Lcom/youku/vo/NewVideoDetail;

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tudou/detail/DetailModel$20$2;->val$uid:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tudou/detail/DetailModel$OnSetAttentionComplete;->onSetAttentionComplete(Lcom/youku/vo/NewVideoDetail;ZZLjava/lang/String;)V

    .line 2149
    return-void
.end method
