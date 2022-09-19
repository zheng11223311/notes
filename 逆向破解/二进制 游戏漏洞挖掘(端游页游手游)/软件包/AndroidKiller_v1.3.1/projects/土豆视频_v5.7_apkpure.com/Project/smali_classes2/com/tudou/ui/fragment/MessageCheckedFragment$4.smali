.class Lcom/tudou/ui/fragment/MessageCheckedFragment$4;
.super Ljava/lang/Object;
.source "MessageCheckedFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/MessageCheckedFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MessageCheckedFragment;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$4;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$4;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->adapter:Lcom/tudou/adapter/MessageAdapter;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/tudou/ui/fragment/MessageCheckedFragment$4;->this$0:Lcom/tudou/ui/fragment/MessageCheckedFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/MessageCheckedFragment;->adapter:Lcom/tudou/adapter/MessageAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/MessageAdapter;->notifyDataSetChanged()V

    .line 227
    :cond_0
    return-void
.end method
