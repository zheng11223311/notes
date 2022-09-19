.class Lcom/tudou/ui/fragment/MyTicketsFragment$3;
.super Ljava/lang/Object;
.source "MyTicketsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/MyTicketsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/MyTicketsFragment;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$3;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
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
    .line 198
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    if-ne v1, p3, :cond_0

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$3;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$600(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/youku/vo/SkipInfo;

    move-result-object v0

    .line 202
    .local v0, "skipInfo":Lcom/youku/vo/SkipInfo;
    iget-object v1, p0, Lcom/tudou/ui/fragment/MyTicketsFragment$3;->this$0:Lcom/tudou/ui/fragment/MyTicketsFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/MyTicketsFragment;->access$1000(Lcom/tudou/ui/fragment/MyTicketsFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    goto :goto_0
.end method
