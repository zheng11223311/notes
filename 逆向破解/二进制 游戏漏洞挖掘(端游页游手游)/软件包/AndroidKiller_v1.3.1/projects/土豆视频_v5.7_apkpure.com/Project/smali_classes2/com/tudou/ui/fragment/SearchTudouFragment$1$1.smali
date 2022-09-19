.class Lcom/tudou/ui/fragment/SearchTudouFragment$1$1;
.super Ljava/lang/Object;
.source "SearchTudouFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SearchTudouFragment$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/SearchTudouFragment$1;

.field final synthetic val$tempWord:Lcom/youku/vo/DropWordResult;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchTudouFragment$1;Lcom/youku/vo/DropWordResult;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1$1;->this$1:Lcom/tudou/ui/fragment/SearchTudouFragment$1;

    iput-object p2, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1$1;->val$tempWord:Lcom/youku/vo/DropWordResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1$1;->this$1:Lcom/tudou/ui/fragment/SearchTudouFragment$1;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouFragment$1$1;->val$tempWord:Lcom/youku/vo/DropWordResult;

    invoke-static {v0, v1, p3, p2}, Lcom/tudou/ui/fragment/SearchTudouFragment;->access$400(Lcom/tudou/ui/fragment/SearchTudouFragment;Lcom/youku/vo/DropWordResult;ILandroid/view/View;)V

    .line 137
    return-void
.end method
