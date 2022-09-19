.class Lcom/tudou/ui/fragment/MyTudouFragment$18;
.super Ljava/lang/Object;
.source "MyTudouFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MyTudouFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MyTudouFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MyTudouFragment;)V
    .locals 0

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTudouFragment$18;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 1114
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$18;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/MyTudouFragment;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$18;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0, p3}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$2700(Lcom/tudou/ui/fragment/MyTudouFragment;I)V

    .line 1118
    :goto_0
    return-void

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/MyTudouFragment$18;->this$0:Lcom/tudou/ui/fragment/MyTudouFragment;

    invoke-static {v0, p3}, Lcom/tudou/ui/fragment/MyTudouFragment;->access$2800(Lcom/tudou/ui/fragment/MyTudouFragment;I)V

    goto :goto_0
.end method
