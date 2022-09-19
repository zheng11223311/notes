.class Lcom/youku/phone/detail/DetailSerisCachePopWindow$6$1;
.super Landroid/os/Handler;
.source "DetailSerisCachePopWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/DetailSerisCachePopWindow$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$6;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/DetailSerisCachePopWindow$6;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$6$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$6;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$6$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$6;

    iget-object v0, v0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$6;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    iget-object v1, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$6$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$6;

    iget-object v1, v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow$6;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$500(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$402(Lcom/youku/phone/detail/DetailSerisCachePopWindow;[Ljava/lang/String;)[Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$6$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$6;

    iget-object v0, v0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$6;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$400(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$6$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$6;

    iget-object v0, v0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$6;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$400(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$6$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$6;

    iget-object v0, v0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$6;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$700(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 323
    return-void

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$6$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$6;

    iget-object v0, v0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$6;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$700(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$6$1;->this$1:Lcom/youku/phone/detail/DetailSerisCachePopWindow$6;

    iget-object v0, v0, Lcom/youku/phone/detail/DetailSerisCachePopWindow$6;->this$0:Lcom/youku/phone/detail/DetailSerisCachePopWindow;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->access$800(Lcom/youku/phone/detail/DetailSerisCachePopWindow;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/youku/phone/detail/DetailSerisCachePopWindow;->cachetextselect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
