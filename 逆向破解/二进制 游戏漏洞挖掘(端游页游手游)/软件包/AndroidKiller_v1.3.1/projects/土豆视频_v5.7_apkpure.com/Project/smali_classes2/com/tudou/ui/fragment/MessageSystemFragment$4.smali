.class Lcom/tudou/ui/fragment/MessageSystemFragment$4;
.super Ljava/lang/Object;
.source "MessageSystemFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MessageSystemFragment;->showDialog(Lcom/youku/vo/MessageSystem$Msg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MessageSystemFragment;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/tudou/ui/fragment/MessageSystemFragment$4;->this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment$4;->this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageSystemFragment;->access$000(Lcom/tudou/ui/fragment/MessageSystemFragment;)Lcom/tudou/adapter/MessageAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageSystemFragment$4;->this$0:Lcom/tudou/ui/fragment/MessageSystemFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/MessageSystemFragment;->access$000(Lcom/tudou/ui/fragment/MessageSystemFragment;)Lcom/tudou/adapter/MessageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/adapter/MessageAdapter;->notifyDataSetChanged()V

    .line 201
    :cond_0
    return-void
.end method
