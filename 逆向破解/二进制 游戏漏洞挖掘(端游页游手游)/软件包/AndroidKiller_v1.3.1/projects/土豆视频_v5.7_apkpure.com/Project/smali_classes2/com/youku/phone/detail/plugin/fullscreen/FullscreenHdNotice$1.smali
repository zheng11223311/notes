.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$1;
.super Ljava/lang/Object;
.source "FullscreenHdNotice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 84
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mBtnClosed click"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    move-result-object v0

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;->ANNO:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Lcom/tudou/detail/vo/Annotation;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    move-result-object v0

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;->VOTE:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->access$300(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Lcom/tudou/detail/vo/VoteInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    move-result-object v0

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;->ANNO:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    if-ne v0, v1, :cond_3

    .line 87
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Lcom/tudou/detail/vo/Annotation;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tudou/detail/vo/Annotation;->setClosed(Z)V

    .line 92
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->hide(Z)V

    .line 93
    return-void

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    move-result-object v0

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;->VOTE:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    if-ne v0, v1, :cond_2

    .line 89
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->access$300(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Lcom/tudou/detail/vo/VoteInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tudou/detail/vo/VoteInfo;->setClosed(Z)V

    goto :goto_0
.end method
