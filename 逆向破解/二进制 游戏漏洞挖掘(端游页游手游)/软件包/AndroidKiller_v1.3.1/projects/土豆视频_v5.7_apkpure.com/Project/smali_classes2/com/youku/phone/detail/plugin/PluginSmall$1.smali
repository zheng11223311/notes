.class Lcom/youku/phone/detail/plugin/PluginSmall$1;
.super Ljava/lang/Object;
.source "PluginSmall.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/PluginSmall;->setTouchListener(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/PluginSmall;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$1;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 304
    const-string v0, "test3"

    const-string v1, "onTouch onTouch"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$1;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$000(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 307
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$1;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0, v3}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$102(Lcom/youku/phone/detail/plugin/PluginSmall;Z)Z

    .line 308
    const-string v0, "test3"

    const-string v1, "onTouch hideControllerAndSystemUI"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v3, v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$1;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$200(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    .line 318
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$1;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$300(Lcom/youku/phone/detail/plugin/PluginSmall;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$1;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$400(Lcom/youku/phone/detail/plugin/PluginSmall;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$1;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v0, v2}, Lcom/youku/phone/detail/plugin/PluginSmall;->showLoading(Z)V

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$1;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0, v2}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$502(Lcom/youku/phone/detail/plugin/PluginSmall;I)I

    .line 325
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-ne v0, v1, :cond_4

    .line 327
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$1;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$200(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    .line 328
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$1;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$300(Lcom/youku/phone/detail/plugin/PluginSmall;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 329
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$1;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v0, v2}, Lcom/youku/phone/detail/plugin/PluginSmall;->showLoading(Z)V

    .line 331
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$1;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0, v2}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$502(Lcom/youku/phone/detail/plugin/PluginSmall;I)I

    .line 333
    :cond_4
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$1;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$600(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 312
    :cond_5
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$1;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0, v2}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$102(Lcom/youku/phone/detail/plugin/PluginSmall;Z)Z

    goto :goto_0
.end method
