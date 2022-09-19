.class Lcom/tudou/adapter/SubscribeAdapter$3$1$1;
.super Lcom/tudou/service/download/OnPreparedCallback;
.source "SubscribeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/SubscribeAdapter$3$1;->alertPositive(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tudou/adapter/SubscribeAdapter$3$1;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/SubscribeAdapter$3$1;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/tudou/adapter/SubscribeAdapter$3$1$1;->this$2:Lcom/tudou/adapter/SubscribeAdapter$3$1;

    invoke-direct {p0}, Lcom/tudou/service/download/OnPreparedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOnePrepared(Ljava/lang/String;)V
    .locals 2
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$3$1$1;->this$2:Lcom/tudou/adapter/SubscribeAdapter$3$1;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeAdapter$3$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$3;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeAdapter$3;->val$itemCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$3$1$1;->this$2:Lcom/tudou/adapter/SubscribeAdapter$3$1;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeAdapter$3$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$3;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeAdapter$3;->val$txt_cache:Landroid/widget/TextView;

    const-string v1, "\u5df2\u7f13\u5b58"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$3$1$1;->this$2:Lcom/tudou/adapter/SubscribeAdapter$3$1;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeAdapter$3$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$3;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeAdapter$3;->val$txt_cache:Landroid/widget/TextView;

    const v1, -0x373738

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 291
    iget-object v0, p0, Lcom/tudou/adapter/SubscribeAdapter$3$1$1;->this$2:Lcom/tudou/adapter/SubscribeAdapter$3$1;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeAdapter$3$1;->this$1:Lcom/tudou/adapter/SubscribeAdapter$3;

    iget-object v0, v0, Lcom/tudou/adapter/SubscribeAdapter$3;->val$img_cache:Landroid/widget/ImageView;

    const v1, 0x7f0208b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onfinish(Z)V
    .locals 0
    .param p1, "isNeedRefresh"    # Z

    .prologue
    .line 298
    return-void
.end method
