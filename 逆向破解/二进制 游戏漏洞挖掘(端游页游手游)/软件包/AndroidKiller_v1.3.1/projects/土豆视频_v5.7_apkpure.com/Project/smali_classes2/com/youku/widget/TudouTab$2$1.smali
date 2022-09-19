.class Lcom/youku/widget/TudouTab$2$1;
.super Landroid/os/Handler;
.source "TudouTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/TudouTab$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/TudouTab$2;


# direct methods
.method constructor <init>(Lcom/youku/widget/TudouTab$2;)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Lcom/youku/widget/TudouTab$2$1;->this$0:Lcom/youku/widget/TudouTab$2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 629
    iget-object v0, p0, Lcom/youku/widget/TudouTab$2$1;->this$0:Lcom/youku/widget/TudouTab$2;

    iget-object v1, v0, Lcom/youku/widget/TudouTab$2;->val$listener:Lcom/youku/widget/TudouTab$OnDoubleClickListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Lcom/youku/widget/TudouTab$OnDoubleClickListener;->OnSingleClick(Landroid/view/View;)V

    .line 630
    return-void
.end method
