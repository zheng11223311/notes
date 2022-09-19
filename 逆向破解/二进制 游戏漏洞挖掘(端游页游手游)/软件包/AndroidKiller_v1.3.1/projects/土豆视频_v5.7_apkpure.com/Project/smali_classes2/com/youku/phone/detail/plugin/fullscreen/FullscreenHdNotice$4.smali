.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$4;
.super Ljava/lang/Object;
.source "FullscreenHdNotice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->setData(Lcom/tudou/detail/vo/Annotation;)V
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
    .line 148
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    move-result-object v1

    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;->ANNO:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Lcom/tudou/detail/vo/Annotation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Lcom/tudou/detail/vo/Annotation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tudou/detail/vo/Annotation;->setClosed(Z)V

    .line 153
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->hide(Z)V

    .line 154
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Lcom/tudou/detail/vo/Annotation;

    move-result-object v1

    iget-object v0, v1, Lcom/tudou/detail/vo/Annotation;->mUrl:Ljava/lang/String;

    .line 155
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;)Lcom/tudou/detail/vo/Annotation;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-virtual {v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tudou/detail/vo/Annotation;->skip(Landroid/content/Context;)V

    .line 163
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method
