.class Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$1;
.super Ljava/lang/Object;
.source "FullScreenRightPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->access$002(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 31
    return-void
.end method
